#!/usr/bin/env bash
set -euo pipefail

# Cria .gitkeep em todos os diretórios vazios (exceto .git/)
# Funciona em macOS e Linux.
echo "Scanning for empty directories..."
find . -type d -empty -not -path "./.git/*" -print -exec touch "{}/.gitkeep" \;

echo
echo "Done. Review with: git status"
