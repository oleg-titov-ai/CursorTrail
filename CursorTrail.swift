import Cocoa

final class AppDelegate: NSObject, NSApplicationDelegate {
    private var statusItem: NSStatusItem!
    private var timer: Timer?
    private var points: [(CGPoint, TimeInterval)] = []
    private var windows: [NSWindow] = []

    func applicationDidFinishLaunching(_ notification: Notification) {
        NSApp.setActivationPolicy(.accessory)
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)
        statusItem.button?.title = "🖱️"
        statusItem.button?.toolTip = "CursorTrail"

        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "CursorTrail is running", action: nil, keyEquivalent: ""))
        menu.addItem(.separator())
        let quit = NSMenuItem(title: "Quit", action: #selector(quit), keyEquivalent: "q")
        quit.target = self
        menu.addItem(quit)
        statusItem.menu = menu

        setupWindows()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0 / 60.0, repeats: true) { [weak self] _ in
            self?.tick()
        }
    }

    private func setupWindows() {
        windows.forEach { $0.close() }
        windows = NSScreen.screens.map { screen in
            let window = NSWindow(contentRect: screen.frame, styleMask: [.borderless], backing: .buffered, defer: false)
            window.backgroundColor = .clear
            window.isOpaque = false
            window.hasShadow = false
            window.ignoresMouseEvents = true
            window.level = .floating
            window.collectionBehavior = [.canJoinAllSpaces, .stationary]
            let view = TrailView(frame: CGRect(origin: .zero, size: screen.frame.size))
            view.provider = { [weak self, weak window] in
                guard let self, let window else { return [] }
                return self.points.map { (CGPoint(x: $0.0.x - window.frame.origin.x, y: $0.0.y - window.frame.origin.y), $0.1) }
            }
            window.contentView = view
            window.orderFrontRegardless()
            return window
        }
    }

    private func tick() {
        let now = Date().timeIntervalSinceReferenceDate
        let mouse = NSEvent.mouseLocation
        points.append((mouse, now))
        points.removeAll { now - $0.1 > 0.5 }
        windows.forEach { $0.contentView?.needsDisplay = true }
    }

    @objc private func quit() {
        NSApp.terminate(nil)
    }
}

final class TrailView: NSView {
    var provider: (() -> [(CGPoint, TimeInterval)])?
    override var isFlipped: Bool { false }

    override func draw(_ dirtyRect: NSRect) {
        let now = Date().timeIntervalSinceReferenceDate
        for (point, created) in provider?() ?? [] {
            let age = now - created
            let alpha = max(0, 1 - age / 0.5) * 0.6
            NSColor.systemBlue.withAlphaComponent(alpha).setFill()
            NSBezierPath(ovalIn: CGRect(x: point.x - 6, y: point.y - 6, width: 12, height: 12)).fill()
        }
    }
}

let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate
app.run()
