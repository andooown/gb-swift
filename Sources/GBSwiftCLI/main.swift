import AppKit
import ArgumentParser

struct GBSwift: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "gbswift"
    )

    @Argument(help: "Path to file.", transform: URL.init(fileURLWithPath:))
    var romFile: URL

    mutating func run() throws {
        print("\(try Data(contentsOf: romFile).count) bytes")
        
        //let app = NSApplication.shared
        //app.setActivationPolicy(.regular)
        //
        //let delegate = AppDelegate()
        //app.delegate = delegate
        //
        //app.run()
    }
}

extension GBSwift {
    enum Error: Swift.Error {
    }
}

GBSwift.main()
