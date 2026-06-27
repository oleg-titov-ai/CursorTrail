# Release Checklist

Use this checklist before publishing a CursorTrail release or portfolio update.

## Build

- [ ] `build.sh` runs successfully on macOS.
- [ ] `CursorTrail.app` is created.
- [ ] The application binary exists at `CursorTrail.app/Contents/MacOS/CursorTrail`.
- [ ] `Info.plist` is valid.
- [ ] GitHub Actions build workflow is green.

## App Behavior

- [ ] The menu-bar icon appears after launch.
- [ ] Enable and disable actions work.
- [ ] Trail length options work.
- [ ] Trail style options work.
- [ ] Opacity options work.
- [ ] Settings persist after app restart.
- [ ] Quit closes the app cleanly.

## macOS Compatibility

- [ ] Tested on the target macOS version.
- [ ] Fullscreen behavior is documented.
- [ ] Multi-display behavior is checked.
- [ ] Accessibility or privacy prompts are understood.

## Documentation

- [ ] README is current.
- [ ] Screenshots match the current interface.
- [ ] Product overview is current.
- [ ] Changelog includes release notes.
- [ ] Known limitations are documented.

## Security and Privacy

- [ ] The app does not use analytics.
- [ ] The app does not call external APIs.
- [ ] No secrets or credentials are included.
- [ ] Local settings are stored only on the user device.

## Release Packaging

- [ ] Version number is selected.
- [ ] Release notes are prepared.
- [ ] Signed or ad-hoc signing status is clear.
- [ ] DMG packaging status is clear.
- [ ] Public download instructions are accurate.
