import SwiftUI

struct OnboardingsController: View {
    @State var activePage: OnboardingPages = .pageOne
    var body: some View {
        if activePage == .pageOne{
            OnboardingOneView(activePage: $activePage)
        } else if activePage == .pageTwo{
           OnboardingTwoView(activePage: $activePage)
        }else if activePage == .pageThree{
            OnboardingThreeView(activePage: $activePage)
        } else {
            WelcomPageView()
        }
    }
}

struct OnboardingsController_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingsController()
    }
}
