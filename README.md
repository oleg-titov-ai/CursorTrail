# CursorTrail 🖱️✨

**CursorTrail** is a tiny nostalgic macOS menu-bar app that adds a smooth fading trail behind your mouse cursor — inspired by the classic Windows 2000s cursor trail effect.

**CursorTrail** — маленькое menu-bar приложение для macOS, которое добавляет плавно исчезающий «шлейф» за курсором мыши, как в старых версиях Windows. Простая визуальная утилита без внешних зависимостей.

> The app is a local visual utility and does not record or transmit cursor activity.

---

## 🇷🇺 Описание на русском

CursorTrail рисует аккуратный шлейф за курсором поверх окон macOS. Приложение живёт в menu bar, не мешает кликам, не требует токенов, аккаунтов, серверов или внешних библиотек.

Проект сделан как простой pet-project / portfolio-project: один файл Swift, один скрипт сборки и понятная инструкция запуска.

---

## 📸 Preview / Скриншоты

### Trail effect / Эффект шлейфа

![CursorTrail classic trail](docs/screenshots/preview-trail-classic.png)

![CursorTrail glow trail](docs/screenshots/preview-trail-glow.png)

### Menu bar controls / Меню приложения

![CursorTrail menu](docs/screenshots/preview-menu.png)

> Put screenshots into `docs/screenshots/` with the exact filenames shown above.  
> Скриншоты нужно класть в `docs/screenshots/` с такими же именами файлов.

---

## ✨ Features / Возможности

- 🖱️ Smooth fading cursor trail / плавный шлейф за курсором
- 🧊 Classic nostalgic Windows-style effect / ностальгический эффект как в Windows 2000-х
- 🌗 Trail styles: Classic, Glow, Dots / стили: Classic, Glow, Dots
- 📏 Trail length: Short, Medium, Long / длина: Short, Medium, Long
- 👻 Adjustable opacity / настройка прозрачности
- 🖥️ Multi-display support / поддержка нескольких мониторов
- 📌 Menu-bar controls / управление из menu bar
- 💾 Settings saved with UserDefaults / настройки сохраняются
- 🚫 No external dependencies / без внешних зависимостей
- ⚡ Lightweight native macOS app / лёгкое нативное приложение

---

## 📦 Project structure / Структура проекта

```text
CursorTrail/
├── CursorTrail.swift
├── build.sh
├── README.md
├── LICENSE
├── .gitignore
└── docs/
    └── screenshots/
        ├── preview-trail-classic.png
        ├── preview-trail-glow.png
        └── preview-menu.png
```

---

## 🛠️ Requirements / Требования

You only need Apple Command Line Tools:

```bash
xcode-select --install
```

Нужны только Command Line Tools от Apple. Полный Xcode не обязателен.

---

## 🚀 Build and run / Сборка и запуск

Clone the repository:

```bash
git clone https://github.com/oleg-titov-ai/CursorTrail.git
cd CursorTrail
```

Build the app:

```bash
chmod +x build.sh
./build.sh
```

The build script removes the previous local `CursorTrail.app` bundle before compiling a fresh one.

For release checks, run the build twice and confirm the second clean rebuild succeeds without relying on stale artifacts.

Run it:

```bash
open CursorTrail.app
```

После запуска в правой части menu bar появится иконка CursorTrail.

---

## ⚙️ Menu options / Меню

CursorTrail lives in the macOS menu bar.

Доступные настройки:

- Enable / Disable trail
- Trail length: Short / Medium / Long
- Trail style: Classic / Glow / Dots
- Opacity: Low / Medium / High
- Quit

Settings are saved automatically.

---

## 🔐 Permissions / Разрешения

CursorTrail does not use accounts, passwords, tokens, servers, analytics or external APIs.

CursorTrail не использует аккаунты, пароли, токены, серверы, аналитику или внешние API.

---

## 🧠 How it works / Как это работает

The app uses standard macOS APIs:

- Swift
- AppKit / Cocoa
- QuartzCore
- NSStatusItem
- transparent overlay window
- custom drawing
- UserDefaults

Приложение написано максимально просто: один Swift-файл, menu-bar интерфейс, прозрачное окно для отрисовки и сохранение настроек через UserDefaults.

---

## 🧪 Known limitations / Ограничения

- The trail may not appear over some fullscreen apps or games.
- Behavior can vary depending on macOS fullscreen Spaces.
- The app is locally signed with ad-hoc signing during build, not with a paid Apple Developer certificate.

На русском:

- В некоторых полноэкранных приложениях или играх шлейф может не отображаться.
- Поведение может отличаться в fullscreen Spaces macOS.
- Приложение подписывается локальной ad-hoc подписью, а не платным Apple Developer сертификатом.

---

## 🧹 Uninstall / Удаление

Quit CursorTrail from the menu bar, then remove the app:

```bash
rm -rf CursorTrail.app
```

Remove saved settings:

```bash
defaults delete com.local.cursortrail
```

---

## 🗺️ Roadmap / Идеи для развития

- [ ] Custom trail colors / свои цвета шлейфа
- [ ] More trail shapes / больше форм
- [ ] Launch at login / автозапуск
- [ ] Settings window / отдельное окно настроек
- [ ] Signed release build / подписанный релиз
- [ ] DMG installer / DMG-установщик

---

## 🤝 Contributing

Pull requests are welcome.

The goal is to keep this project simple, readable and dependency-free.

---

## 📄 License

MIT License.

Feel free to use, modify and share.

Maintenance note: smoke-test the trail after moving the cursor between displays with different scaling settings.

Maintenance note: confirm the menu-bar icon remains usable after waking the Mac from sleep.

Maintenance note: verify saved opacity and trail-style settings survive an application restart.

Maintenance note: confirm the trail remains visible when macOS Increase Contrast is enabled.

Maintenance note: verify the documented uninstall steps remove both the app bundle and saved settings cleanly.

Maintenance note: verify connecting or disconnecting an external display does not leave stale trail overlays on removed screens.

Maintenance note: confirm disabling the trail clears any visible overlay immediately without restarting the app.

Maintenance note: verify changing the primary display while the app is running keeps the trail aligned with the cursor.

Maintenance note: confirm cursor alignment remains correct after changing display scaling without restarting the app.

Maintenance note: smoke-test entering and leaving fullscreen Spaces to confirm overlays recover correctly.

Maintenance note: verify the menu-bar controls remain responsive after a display sleep/wake cycle.

Maintenance note: when Launch at Login is implemented, verify it starts only one app instance and preserves saved settings.

Maintenance note: confirm a clean build still succeeds after updating macOS Command Line Tools before publishing a release.

Maintenance note: verify quitting from the menu bar removes all overlay windows immediately and leaves no visible trail artifacts.

Maintenance note: verify switching rapidly between multiple Spaces does not leave duplicate overlay windows behind.

Maintenance note: verify saved trail settings still apply correctly after restarting the app with a different display arrangement.

Maintenance note: regression-test connecting a second display after launch and confirm no duplicate trail overlays are created.

Maintenance note: verify disconnecting and reconnecting the same external display rebuilds overlay state without leaving an orphaned window.

Maintenance note: verify rearranging display positions in System Settings keeps overlay coordinates aligned without restarting the app.

Maintenance note: after display hot-plug events, confirm the saved trail style and opacity remain unchanged while overlays are rebuilt.

Maintenance note: verify repeated enable/disable cycles do not accumulate hidden overlay windows or increase idle CPU usage.

Maintenance note: verify quitting and relaunching the app restores exactly one menu-bar item and no stale overlay windows.

Maintenance note: after waking from sleep with a changed monitor layout, verify overlays are rebuilt once and remain aligned to the active displays.

Maintenance note: after disconnecting the primary external display, confirm the trail migrates cleanly to the remaining active screen without stale coordinates.

Maintenance note: verify launching with only one active display creates exactly one correctly aligned overlay and no duplicate window state.

Maintenance note: after reconnecting displays in a different order, confirm exactly one overlay is recreated per active screen and old screen references are discarded.

Maintenance note: verify changing trail length while topology is stable updates existing overlays without recreating display ownership state.
