# Future Work

Small improvements to consider next.

## Short Term

- Link documentation from the README.
- Add a screenshot of the menu controls.
- Add a short visual demo.
- Document stable overlay behavior across display and session changes.
- Add a regression check that coalesces duplicate display notifications and ignores stale topology generations.
- Add a regression check that disable or quit wins over queued topology refreshes so overlays cannot reappear afterward.
- Add a regression check that unchanged displays keep their existing overlay instances during a coalesced topology refresh.
- Add a regression check for a rapid display-scale change followed by disconnect, ensuring no overlay remains bound to the removed screen.

## Medium Term

- Add launch at login.
- Add custom trail colors.
- Add packaged release build.
- Add release notes for each version.

## Portfolio

- Show the app visually.
- Keep the local-first message clear.
