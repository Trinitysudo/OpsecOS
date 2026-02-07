#!/usr/bin/env bash
# OpsecOS Build Script
# Run this on an Arch Linux system with 'archiso' installed.

set -e

# Cleanup previous builds
echo "Cleaning up..."
rm -rf work out

# Startup
echo "Starting OpsecOS Build..."
mkdir -p out
mkarchiso -v -w work -o out .

echo "Build complete! Your ISO is in the 'out' directory."
ls -lh out
