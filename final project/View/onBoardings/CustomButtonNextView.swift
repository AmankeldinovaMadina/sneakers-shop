import SwiftUI

enum OnboardingPages{
    case pageOne
    case pageTwo
    case pageThree
    case welcomePage
}


struct CustomButtonNextView: View {
    @Binding var activePage: OnboardingPages
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                ZStack(alignment: .top) {
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.3))
                        .ignoresSafeArea()
                        .frame(height: geometry.size.height / 3)
                    VStack(spacing: 16) {
                        CirclesView(activePage: $activePage)
                        Text("Fast shipping")
                            .foregroundColor(.white)
                            .font(.system(size: 28, weight: .semibold))
                            .padding(.top, 40)
                        Text("Get all of your desired sneakers in one place.")
                            .foregroundColor(.white)
                            .font(.system(size: 17))
                        
                        Button(action: {
                            switch activePage {
                            case .pageOne:
                                activePage = .pageTwo
                            case .pageTwo:
                                activePage = .pageThree
                            case .pageThree:
                                activePage = .welcomePage
                            case .welcomePage: activePage = .welcomePage
                            }
                        }) {
                            NextButtonView()
                        }
                        
                    }
                }
            }
        }
    }
}
struct CirclesView: View {
    @Binding var activePage: OnboardingPages
    
    var body: some View {
        HStack(spacing: 24) {
            Circle()
                .frame(width: 8)
                .foregroundColor(activePage == .pageOne ? .white : Color(red: 1, green: 1, blue: 1, opacity: 0.4))
            Circle()
                .frame(width: 8)
                .foregroundColor(activePage == .pageTwo ? .white : Color(red: 1, green: 1, blue: 1, opacity: 0.4))
            Circle()
                .frame(width: 8)
                .foregroundColor(activePage == .pageThree ? .white : Color(red: 1, green: 1, blue: 1, opacity: 0.4))
        }
        .padding(.top, 32)
    }
}



struct NextButtonView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 90)
                .frame(height: 54)
                .padding(.horizontal)
                .foregroundColor(.black)
            Text("Next")
                .foregroundColor(.white)
                .font(.system(size: 17, weight: .semibold))
        }
        .padding(.top)
    }
}


struct CustomButtonNextView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonNextView(activePage: .constant(.pageOne))
    }
}
