import SwiftUI

struct OnboardingThreeView: View {
    @Binding var activePage: OnboardingPages
    var body: some View {
        ZStack{
            HStack{
                Image("image6")
                Spacer()
            }.padding(.bottom, 300)
            HStack{
                Spacer()
                Image("image5")
            } .padding(.bottom, 450)
            VStack{
                Spacer()
                Image("vector3")
            }
            CustomButtonNextView(activePage: $activePage)
        }
    }
}

