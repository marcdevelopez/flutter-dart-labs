#!/usr/bin/env bash
set -euo pipefail

repo_root="$(git rev-parse --show-toplevel 2>/dev/null || true)"
if [[ -z "${repo_root}" ]]; then
  echo "Error: run this script inside the repository." >&2
  exit 1
fi

cd "${repo_root}"

if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: flutter is not installed or not in PATH." >&2
  exit 1
fi

if ! command -v dart >/dev/null 2>&1; then
  echo "Error: dart is not installed or not in PATH." >&2
  exit 1
fi

mapfile -t pubspecs < <(
  find . -name pubspec.yaml \
    -not -path "./.git/*" \
    -not -path "*/build/*" \
    -not -path "*/.dart_tool/*" \
    | sort
)

if [[ ${#pubspecs[@]} -eq 0 ]]; then
  echo "No pubspec.yaml files found."
  exit 0
fi

echo "Found ${#pubspecs[@]} Dart/Flutter projects."

for pubspec in "${pubspecs[@]}"; do
  project_dir="${pubspec%/pubspec.yaml}"
  project_dir="${project_dir#./}"

  echo
  echo "==> ${project_dir}"

  if grep -Eq '^[[:space:]]*flutter:' "${pubspec}"; then
    (cd "${project_dir}" && flutter pub get)
  else
    (cd "${project_dir}" && dart pub get)
  fi
done

echo

echo "Bootstrap completed successfully."
