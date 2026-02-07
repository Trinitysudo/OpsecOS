#!/usr/bin/env bash
# GhostOS ISO Build Script
# ------------------------
# This script builds the GhostOS ISO using archiso.

# Run this on an Arch Linux system with 'archiso' installed.

set -e

echo "--- Starting GhostOS ISO Build ---"

# Cleanup previous builds
echo "Cleaning up..."
rm -rf work out

# Startup
echo "Starting GhostOS Build..."
mkdir -p out
mkarchiso -v -w work -o out .

echo "Build complete! Your ISO is in the 'out' directory."
ls -lh out
