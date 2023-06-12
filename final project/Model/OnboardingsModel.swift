import SwiftUI

class OnboardingsModel: ObservableObject {
   let onboardingStatusKey = "OnboardingStatus"
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if UserDefaults.standard.object(forKey: onboardingStatusKey) == nil {
            UserDefaults.standard.set(false, forKey: onboardingStatusKey)
        }
        return true
    }

    
    
}
