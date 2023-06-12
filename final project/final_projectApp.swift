import SwiftUI
import Firebase


@main
struct final_projectApp: App {

    @StateObject var viewModel = AuthViewModel()
    
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
