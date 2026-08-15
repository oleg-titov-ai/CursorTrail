# Maintenance checklist

After macOS or Xcode updates, rebuild from a clean checkout and verify the trail, menu-bar controls, saved settings, and multi-display behavior.

Confirm the trail remains usable with reduced motion and increased contrast accessibility settings enabled.

Verify CPU usage returns to normal idle levels when the pointer remains stationary.

Confirm the app exits cleanly without leaving a background process after disabling launch at login.

Test pointer transitions between displays with different scaling settings to catch trail jumps or clipping.

Launch once with a clean preferences profile before release to confirm defaults are usable and no old local state is required.

Revoke and re-grant the required macOS permission once before release to verify the app recovers without reinstalling or losing preferences.

After one sleep-and-wake cycle, confirm the trail resumes correctly and saved settings remain unchanged.

Disconnect and reconnect an external display once to verify the trail restores without restarting the app.

Confirm the trail remains aligned after changing the relative arrangement of connected displays.

Verify disabling and re-enabling the trail does not leave stale visual artifacts on any connected display.

Confirm rapid pointer movement does not cause unbounded trail growth or sustained CPU usage after movement stops.

Verify repeated enable/disable cycles do not create duplicate overlay windows or steadily increase idle CPU usage.
