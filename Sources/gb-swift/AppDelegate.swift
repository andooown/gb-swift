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
        
        let vc = ViewController()
        window.contentView!.addSubview(vc.view)
        vc.view.frame = window.contentView!.bounds
        
        windowController.showWindow(self)

        NSApplication.shared.activate(ignoringOtherApps: true)
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        true
    }
}

final class MainWindowController: NSWindowController, NSWindowDelegate {
}
