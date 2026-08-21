# Maintenance

- 2026-08-19: Keep display-topology regression checks focused on one overlay per active screen, correct cursor alignment after hot-plug/rearrangement, and no stale overlays after quit or disable.
- 2026-08-20: Recheck cursor alignment after changing display scale or resolution so the trail remains visually correct across common macOS display configurations.
- 2026-08-20: Verify enabling and disabling the trail repeatedly does not create duplicate overlays or leave persistent windows after the feature is turned off.
- 2026-08-20: After system sleep and wake, confirm each active display has exactly one correctly aligned trail overlay and no stale window remains on a disconnected screen.
- 2026-08-21: Verify rapid display connect/disconnect cycles do not leave orphaned overlays or increase the steady-state overlay count after the layout settles.
- 2026-08-21: Verify temporarily disabling and re-enabling the trail after a display topology change rebuilds only the overlays required for the currently active screens.
