#!/bin/bash

set -euo pipefail

# Temporary directory
WORKDIR=$(mktemp -d)
ZIP_FILE="$WORKDIR/paper_template.zip"
RESOURCES_DIR="resources"

echo "Downloading paper_template repository..."
wget -q -O "$ZIP_FILE" "https://github.com/marioguenzel/paper_template/archive/refs/heads/main.zip"

echo "Extracting repository..."
unzip -q "$ZIP_FILE" -d "$WORKDIR"

# Detect extracted folder name
EXTRACTED_DIR=$(find "$WORKDIR" -mindepth 1 -maxdepth 1 -type d)

echo "Copying files (excluding .gitignore and README.md)..."
rsync -a --exclude='.gitignore' --exclude='README.md' --exclude='makepaper.sh' "$EXTRACTED_DIR"/ ./

# Create resources directory
mkdir -p "$RESOURCES_DIR"

echo "Downloading additional resources..."
wget -q -P "$RESOURCES_DIR" \
    "https://github.com/dagstuhl-publishing/styles/raw/refs/heads/master/LIPIcs/authors/lipics-v2021.cls" \
    "https://github.com/dagstuhl-publishing/styles/raw/refs/heads/master/LIPIcs/authors/orcid.pdf" \
    "https://github.com/dagstuhl-publishing/styles/raw/refs/heads/master/LIPIcs/authors/cc-by.pdf" \
    "https://github.com/dagstuhl-publishing/styles/raw/refs/heads/master/LIPIcs/authors/lipics-logo-bw.pdf" \
    "http://mirrors.ctan.org/macros/latex/contrib/IEEEtran/IEEEtran.cls"

echo "Cleaning up temporary files..."
rm -rf "$WORKDIR"

echo "All files downloaded successfully!"
