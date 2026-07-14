#!/bin/bash
set -euo pipefail

APP_NAME="CursorTrail"
BUNDLE_ID="com.local.cursortrail"
SRC="CursorTrail.swift"
APP_DIR="$APP_NAME.app"
CONTENTS_DIR="$APP_DIR/Contents"
MACOS_DIR="$CONTENTS_DIR/MacOS"
RESOURCES_DIR="$CONTENTS_DIR/Resources"
BIN_PATH="$MACOS_DIR/$APP_NAME"

if ! command -v swiftc >/dev/null 2>&1; then
  echo "❌ swiftc not found. Install Apple Command Line Tools:"
  echo "   xcode-select --install"
  exit 1
fi

if ! command -v codesign >/dev/null 2>&1; then
  echo "❌ codesign not found. Install Apple Command Line Tools."
  exit 1
fi

if [ ! -f "$SRC" ]; then
  echo "❌ $SRC not found. Run this script from the project directory."
  exit 1
fi

rm -rf "$APP_DIR"
mkdir -p "$MACOS_DIR" "$RESOURCES_DIR"

echo "🔨 Compiling $SRC..."
swiftc -O "$SRC" \
  -framework Cocoa \
  -framework QuartzCore \
  -o "$BIN_PATH"

cat > "$CONTENTS_DIR/Info.plist" <<PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>CFBundleExecutable</key>
  <string>$APP_NAME</string>
  <key>CFBundleIdentifier</key>
  <string>$BUNDLE_ID</string>
  <key>CFBundleName</key>
  <string>$APP_NAME</string>
  <key>CFBundleDisplayName</key>
  <string>$APP_NAME</string>
  <key>CFBundlePackageType</key>
  <string>APPL</string>
  <key>CFBundleVersion</key>
  <string>1.0.0</string>
  <key>CFBundleShortVersionString</key>
  <string>1.0.0</string>
  <key>LSMinimumSystemVersion</key>
  <string>11.0</string>
  <key>LSUIElement</key>
  <true/>
  <key>NSHighResolutionCapable</key>
  <true/>
</dict>
</plist>
PLIST

plutil -lint "$CONTENTS_DIR/Info.plist" >/dev/null
chmod +x "$BIN_PATH"

echo "🔏 Ad-hoc signing..."
codesign --force --deep --sign - "$APP_DIR" >/dev/null
codesign --verify --deep --strict "$APP_DIR"

echo "✅ Built $APP_DIR"
echo "🚀 Run: open $APP_DIR"
