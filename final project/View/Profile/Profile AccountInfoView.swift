import SwiftUI

struct Profile_AccountInfoView: View {
    @State var email = ""
    @State var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        if let user = viewModel.currentUser {
            VStack(spacing: 16){
                TextField(user.email, text: $email)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(Color(red: 0.965, green: 0.965, blue: 0.965))
                    ) .foregroundColor(.black)
                    .accentColor(.black)
                TextField(user.password, text: $password)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(Color(red: 0.965, green: 0.965, blue: 0.965))
                    )
                TextField(user.password, text: $password)
                
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(Color(red: 0.965, green: 0.965, blue: 0.965))
                    )
                Spacer()
                SaveChangesButton()
            } .padding(.horizontal)
                .padding(.top)
        }
    }
}

struct SaveChangesButton: View {
    var body: some View {
        ZStack{
            Capsule()
                .frame(height: 48)
                .foregroundColor(.black)
            Text("Save changes")
                .foregroundColor(.white)
                .font(.system(size: 17, weight: .semibold))
        }
    }
}
struct Profile_AccountInfoView_Previews: PreviewProvider {
    static var previews: some View {
        Profile_AccountInfoView()
    }
}
