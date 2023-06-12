import SwiftUI

struct RegistrationView: View {
    @State  var email = ""
    @State  var password = ""
    @State  var repeatedPassword = ""
    @State  var showTabView = false
    @EnvironmentObject var viewModel : AuthViewModel
    var body: some View {
        VStack{
           VStack (spacing: 16){
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
               SecureField("Repeat password", text: $repeatedPassword)
                    .autocapitalization(.none)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(Color(red: 0.965, green: 0.965, blue: 0.965))
                    )
            } .padding(.top, 62)
              Spacer()
            Button {
                showTabView.toggle()
                Task{
                    try await viewModel.createUser(withEmail: email, password: password)
                }
            } label: {
                SignUpButtonView()
            }  .fullScreenCover(isPresented: $showTabView) {
                AppTabView()
                .disabled(!formIsValid)
                .opacity(formIsValid ? 1.0 : 0.5)
            }
        } .padding(.horizontal)

    }
}

struct SignUpButtonView: View {
    var body: some View {
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

extension RegistrationView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
        && repeatedPassword == password
    }
}


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
