import SwiftUI

struct OnboardingOneView: View {
    @Binding var activePage: OnboardingPages
    var body: some View {
        ZStack{
            HStack{
                Image("image1")
                Spacer()
            }.padding(.bottom,350)
            HStack{
                Spacer()
                Image("image2")
            }.padding(.bottom, 500)
            VStack{
                Spacer()
                Image("vector1")
            }
            CustomButtonNextView(activePage: $activePage)
        }
    }
}

