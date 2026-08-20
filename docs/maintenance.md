# Maintenance

- 2026-08-19: Keep display-topology regression checks focused on one overlay per active screen, correct cursor alignment after hot-plug/rearrangement, and no stale overlays after quit or disable.
- 2026-08-20: Recheck cursor alignment after changing display scale or resolution so the trail remains visually correct across common macOS display configurations.
- 2026-08-20: Verify enabling and disabling the trail repeatedly does not create duplicate overlays or leave persistent windows after the feature is turned off.
