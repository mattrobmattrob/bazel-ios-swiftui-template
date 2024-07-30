import SwiftUI

@main
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Make it go slow to see launch image....
        for i in 0...100000 {
          print(i)
        }
        return true
    }
}

struct MainApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
