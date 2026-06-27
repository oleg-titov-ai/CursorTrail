# Usage Guide

This guide explains the basic CursorTrail workflow for users and reviewers.

## Build the App

Run the build script from the repository root.

```bash
chmod +x build.sh
./build.sh
```

After a successful build, the repository will contain a local `CursorTrail.app` bundle.

## Launch

Open the generated app bundle from Finder or with the macOS `open` command.

CursorTrail is a menu-bar app. It does not open a normal application window.

## Menu Controls

The menu-bar menu contains controls for:

- enabling or disabling the trail;
- selecting trail length;
- selecting trail style;
- selecting opacity;
- quitting the app.

## Recommended First Test

1. Build the app.
2. Launch the app.
3. Enable the trail.
4. Choose the Classic style.
5. Set length to Medium.
6. Set opacity to High.
7. Move the cursor across normal desktop windows.

## Known Behavior

The trail may not appear above every fullscreen app, game, or protected macOS surface. This limitation is expected for a lightweight overlay-window utility.

## Resetting Preferences

CursorTrail stores settings locally using UserDefaults. If settings need to be reset, remove the saved preferences from macOS system settings storage or rebuild the app and test with default options.

## Privacy

CursorTrail runs locally and does not use accounts, analytics, external APIs, cloud services, or remote servers.
