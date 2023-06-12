import SwiftUI

struct WelcomPageView: View {
    @EnvironmentObject var viewModel : AuthViewModel
    
    var body: some View {
        NavigationStack{
            ZStack{
                WelcomepageImagesView()
                VStack(alignment: .center){
                    Spacer()
                    Text("Welcome to the biggest  sneakers store app")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .font(.system(size: 28, weight: .semibold))
                        .padding(.horizontal)
                    NavigationLink(destination: RegistrationView()) {
                            ZStack{
                                RoundedRectangle(cornerRadius: 90)
                                    .frame(height: 54)
                                    .padding(.horizontal)
                                    .foregroundColor(.black)
                                Text("Sign Up")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .semibold))
                            }
                        
                            .padding(.bottom, 24)
                    }
                    NavigationLink(destination: AuthorizationView()) {
                        ButtonHaveAccountView()
                    }
                }
            }
        }
    }
}


struct ButtonSignUpView: View {
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 90)
                .frame(height: 54)
                .padding(.horizontal)
                .foregroundColor(.black)
            Text("Sign Up")
                .foregroundColor(.white)
                .font(.system(size: 17, weight: .semibold))
        }
    }
}

struct WelcomepageImagesView: View {
    var body: some View {
        ZStack{
            VStack{
                Image("wpVector")
                    .ignoresSafeArea()
                Spacer()
            }
            VStack{
                HStack{
                    Spacer()
                    Image("wp1")
                }
            }.padding(.top,-40)
            VStack{
                HStack{
                    Image("wp2")
                    Spacer()
                }
            } .padding(.top, 90)
        }
    }
}


struct ButtonHaveAccountView: View {
    var body: some View {
        Text("I already have an account")
            .font(.system(size: 17, weight: .semibold))
            .padding(.bottom, 20)
            .foregroundColor(.black)
    }
}

struct WelcomPageView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomPageView()
    }
}
