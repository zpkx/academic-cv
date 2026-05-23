#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TEMPLATES_DIR="${ROOT_DIR}/resume-data/templates"
UPLOADS_DIR="${ROOT_DIR}/public/uploads"

CN_HTML="${TEMPLATES_DIR}/resume_template_cn.html"
EN_HTML="${TEMPLATES_DIR}/resume_template_en.html"
CN_PDF="${UPLOADS_DIR}/Peng_Zhang_resume_cn_2026.pdf"
EN_PDF="${UPLOADS_DIR}/Peng_Zhang_resume_en_2026.pdf"

detect_browser() {
  local candidates=(
    "${CHROME_BIN:-}"
    "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
    "google-chrome"
    "chromium"
    "chromium-browser"
  )

  local candidate
  for candidate in "${candidates[@]}"; do
    if [[ -z "${candidate}" ]]; then
      continue
    fi

    if [[ -x "${candidate}" ]]; then
      echo "${candidate}"
      return 0
    fi

    if command -v "${candidate}" >/dev/null 2>&1; then
      command -v "${candidate}"
      return 0
    fi
  done

  echo "Error: no supported Chrome/Chromium binary found." >&2
  echo "Set CHROME_BIN to your browser executable path and retry." >&2
  return 1
}

print_pdf() {
  local browser="$1"
  local input_html="$2"
  local output_pdf="$3"

  if [[ ! -f "${input_html}" ]]; then
    echo "Error: template not found: ${input_html}" >&2
    return 1
  fi

  local input_uri="file://${input_html}"
  "${browser}" \
    --headless=new \
    --disable-gpu \
    --no-pdf-header-footer \
    "--print-to-pdf=${output_pdf}" \
    "${input_uri}" >/dev/null 2>&1

  if [[ ! -f "${output_pdf}" ]]; then
    echo "Error: failed to generate ${output_pdf}" >&2
    return 1
  fi
}

usage() {
  cat <<'EOF'
Usage:
  scripts/export-template-pdf.sh

Examples:
  scripts/export-template-pdf.sh
EOF
}

main() {
  if [[ "${1:-}" == "-h" || "${1:-}" == "--help" || "${1:-}" == "help" ]]; then
    usage
    return 0
  fi

  if [[ "$#" -gt 0 ]]; then
    echo "Error: this script does not accept language arguments." >&2
    usage
    return 1
  fi

  local browser
  browser="$(detect_browser)"
  mkdir -p "${UPLOADS_DIR}"

  print_pdf "${browser}" "${CN_HTML}" "${CN_PDF}"
  print_pdf "${browser}" "${EN_HTML}" "${EN_PDF}"
  echo "Generated: ${CN_PDF}"
  echo "Generated: ${EN_PDF}"
}

main "$@"
