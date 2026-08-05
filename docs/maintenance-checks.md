# Maintenance Checks

Before publishing a build:

- Run a clean rebuild after deleting the previous app bundle.
- Confirm the app opens and the menu-bar controls remain responsive.
- Test the trail across displays with different scaling settings.
- Verify the repository contains no generated app bundle or local settings.
- Confirm disabling the effect releases its rendering resources promptly.
- Verify reduced-motion settings produce a predictable, non-distracting fallback.
- Confirm launch-at-login behavior matches the visible preference after an app update.
- Check that quitting the app leaves no lingering background process.
- Verify denied accessibility or screen permissions produce a clear, reversible fallback.
- Confirm resetting preferences restores documented defaults without requiring a reinstall.
- Confirm switching macOS Spaces does not leave stale trail artifacts behind.
- Verify sleep and wake do not duplicate the renderer or menu-bar item.
- Confirm disconnecting an external display does not leave an off-screen overlay or stale renderer.
