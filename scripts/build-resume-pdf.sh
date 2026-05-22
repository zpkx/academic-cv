#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CV_DIR="${ROOT_DIR}/docs/cv"
STYLE_FILE="${CV_DIR}/resume.css"
UPLOADS_DIR="${ROOT_DIR}/public/uploads"

LANG="${1:-en}"

case "${LANG}" in
  en)
    INPUT_FILE="${CV_DIR}/Peng_Zhang_resume_en_2026.md"
    OUTPUT_FILE="${UPLOADS_DIR}/Peng_Zhang_resume_en_2026.pdf"
    ;;
  cn|zh)
    INPUT_FILE="${CV_DIR}/Peng_Zhang_resume_cn_2026.md"
    OUTPUT_FILE="${UPLOADS_DIR}/Peng_Zhang_resume_cn_2026.pdf"
    ;;
  *)
    echo "Unsupported language: ${LANG}"
    echo "Usage: $0 [en|cn|zh]"
    exit 1
    ;;
esac

if ! command -v pandoc >/dev/null 2>&1; then
  echo "pandoc is required but not found in PATH."
  exit 1
fi

if [ ! -f "${STYLE_FILE}" ]; then
  echo "Missing stylesheet: ${STYLE_FILE}"
  exit 1
fi

if [ ! -f "${INPUT_FILE}" ]; then
  echo "Missing resume markdown: ${INPUT_FILE}"
  exit 1
fi

mkdir -p "${UPLOADS_DIR}"

if [ -x "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" ]; then
  BROWSER_BIN="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
elif [ -x "/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge" ]; then
  BROWSER_BIN="/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge"
else
  echo "No supported browser found. Install Google Chrome or Microsoft Edge."
  exit 1
fi

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TMP_DIR}"' EXIT

cp "${STYLE_FILE}" "${TMP_DIR}/resume.css"

pandoc "${INPUT_FILE}" -s --css "resume.css" -o "${TMP_DIR}/resume.html"

"${BROWSER_BIN}" \
  --headless=new \
  --disable-gpu \
  --allow-file-access-from-files \
  --no-pdf-header-footer \
  --print-to-pdf-no-header \
  --print-to-pdf="${OUTPUT_FILE}" \
  "file://${TMP_DIR}/resume.html"

echo "PDF generated: ${OUTPUT_FILE}"
