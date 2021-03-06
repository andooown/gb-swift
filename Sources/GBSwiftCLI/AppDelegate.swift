import AppKit

final class AppDelegate: NSObject, NSApplicationDelegate {
    private var windowController: NSWindowController?

    func applicationDidFinishLaunching(_ notification: Notification) {
        let window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 400, height: 300),
            styleMask: [.titled, .closable],
            backing: .buffered,
            defer: false
        )
        window.center()

        let windowController = MainWindowController(window: window)
        self.windowController = windowController

        window.delegate = windowController

        let controller = ViewController()
        window.contentView!.addSubview(controller.view)
        controller.view.frame = window.contentView!.bounds

        windowController.showWindow(self)

        NSApplication.shared.activate(ignoringOtherApps: true)
    }
}

final class MainWindowController: NSWindowController, NSWindowDelegate {
    func windowWillClose(_ notification: Notification) {
        NSApplication.shared.stop(self)
    }
}
