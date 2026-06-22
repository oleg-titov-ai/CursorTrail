# Product Overview

## What CursorTrail Is

CursorTrail is a lightweight native macOS utility that adds a smooth visual trail behind the mouse cursor.

The project recreates a nostalgic desktop effect in a modern menu-bar application while keeping the implementation small, readable, and dependency-free.

## User Experience

```text
Launch CursorTrail
      ↓
menu-bar icon appears
      ↓
select trail style and length
      ↓
move the mouse
      ↓
transparent overlay draws fading trail
```

## Product Principles

- native macOS implementation;
- minimal resource usage;
- no accounts or cloud services;
- no analytics or tracking;
- no external dependencies;
- settings stored locally;
- simple build process.

## Main Features

- Classic, Glow, and Dots trail styles;
- Short, Medium, and Long trail lengths;
- adjustable opacity;
- enable or disable from the menu bar;
- multi-display support;
- saved preferences with UserDefaults;
- ad-hoc local signing during build.

## Technical Design

CursorTrail uses:

- Swift;
- AppKit and Cocoa;
- QuartzCore;
- `NSStatusItem` for menu-bar controls;
- a transparent overlay window;
- custom drawing and timed fading;
- UserDefaults for local preferences.

## Portfolio Value

The repository demonstrates:

- native macOS development;
- event handling;
- custom rendering;
- transparent window management;
- menu-bar application design;
- local settings persistence;
- shell-based application packaging.

## Possible Product Evolution

1. launch at login;
2. custom colors;
3. more trail shapes;
4. a dedicated settings window;
5. signed and notarized release builds;
6. DMG packaging;
7. accessibility-focused visual presets.

## Privacy

CursorTrail runs locally and does not use accounts, tokens, remote servers, analytics, or external APIs.
