import SwiftUI

struct OnboardingTwoView: View {
    @Binding var activePage: OnboardingPages
    var body: some View {
        ZStack{
            HStack{
                Image("image4")
                Spacer()
            }.padding(.bottom,300)
            HStack{
                Spacer()
                Image("image3")
            }.padding(.bottom, 450)
                .padding(.trailing, 10)
            VStack{
                Spacer()
                Image("vector2")
            }
            CustomButtonNextView(activePage: $activePage)
        }
    }
}
