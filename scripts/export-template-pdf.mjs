#!/usr/bin/env node

import { mkdir } from "node:fs/promises";
import { existsSync } from "node:fs";
import path from "node:path";
import { spawnSync } from "node:child_process";
import { fileURLToPath, pathToFileURL } from "node:url";
import puppeteer from "puppeteer";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const rootDir = path.resolve(__dirname, "..");
const templatesDir = path.join(rootDir, "resume-data", "templates");
const uploadsDir = path.join(rootDir, "static", "uploads");

const targets = [
  {
    inputHtml: path.join(templatesDir, "resume_template_cn.html"),
    outputPdf: path.join(uploadsDir, "Peng_Zhang_resume_cn_2026.pdf"),
  },
  {
    inputHtml: path.join(templatesDir, "resume_template_en.html"),
    outputPdf: path.join(uploadsDir, "Peng_Zhang_resume_en_2026.pdf"),
  },
];

function resolveChromeExecutable() {
  const candidates = [
    process.env.CHROME_BIN,
    "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome",
    "google-chrome",
    "chromium",
    "chromium-browser",
  ];

  for (const candidate of candidates) {
    if (!candidate) {
      continue;
    }

    if (candidate.includes("/") && existsSync(candidate)) {
      return candidate;
    }

    const result = spawnSync("which", [candidate], { encoding: "utf8" });
    if (result.status === 0) {
      const resolved = result.stdout.trim();
      if (resolved) {
        return resolved;
      }
    }
  }

  return null;
}

function getLaunchOptions() {
  const launchOptions = {
    headless: true,
  };

  const executablePath = resolveChromeExecutable();
  if (executablePath) {
    launchOptions.executablePath = executablePath;
  }

  if (process.env.CI === "true" || process.env.PUPPETEER_NO_SANDBOX === "1") {
    launchOptions.args = ["--no-sandbox", "--disable-setuid-sandbox"];
  }

  return launchOptions;
}

async function generatePdf(browser, inputHtml, outputPdf) {
  const page = await browser.newPage();
  try {
    await page.goto(pathToFileURL(inputHtml).toString(), {
      waitUntil: "networkidle0",
    });
    await page.evaluate(async () => {
      if (document.fonts?.ready) {
        await document.fonts.ready;
      }
    });
    await page.pdf({
      path: outputPdf,
      format: "A4",
      printBackground: true,
      displayHeaderFooter: false,
    });
    console.log(`Generated: ${outputPdf}`);
  } finally {
    await page.close();
  }
}

async function main() {
  await mkdir(uploadsDir, { recursive: true });
  const browser = await puppeteer.launch(getLaunchOptions());
  try {
    for (const target of targets) {
      await generatePdf(browser, target.inputHtml, target.outputPdf);
    }
  } finally {
    await browser.close();
  }
}

main().catch((error) => {
  console.error("Error: failed to generate PDFs");
  console.error(
    "Tip: set CHROME_BIN or install bundled Chrome via `npx puppeteer browsers install chrome`.",
  );
  console.error(error instanceof Error ? error.message : String(error));
  process.exitCode = 1;
});
