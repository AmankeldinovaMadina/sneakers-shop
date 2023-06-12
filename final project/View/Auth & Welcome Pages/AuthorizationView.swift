import SwiftUI

struct AuthorizationView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showAppTabView = false
    @EnvironmentObject var viewModel : AuthViewModel
    
    var body: some View {
        VStack{
            VStack(spacing: 16) {
                TextField("Email", text: $email)
                    .autocapitalization(.none)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(Color(red: 0.965, green: 0.965, blue: 0.965))
                    )
                SecureField("Password", text: $password)
                    .autocapitalization(.none)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(Color(red: 0.965, green: 0.965, blue: 0.965))
                    )
            } .padding(.top, 62)
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 90)
                    .frame(height: 54)
                Button {
                    showAppTabView.toggle()
                    Task{
                        try await viewModel.sigIn(withEmail:email, password: password)
                    }
                } label: {
                    Text("Sign In")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .semibold))
                } .fullScreenCover(isPresented: $showAppTabView) {
                    AppTabView()
                        .disabled(!formIsValid)
                        .opacity(formIsValid ? 1.0 : 0.5)
                }

                
            }
        }.padding(.horizontal)
    }
}

extension AuthorizationView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
        
    }
}

struct AuthorizationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorizationView()
    }
}
