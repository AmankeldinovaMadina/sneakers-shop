import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        NavigationStack{
            VStack{
                Text("Cart")
                    .foregroundColor(.black)
                    .font(.system(size: 17, weight: .semibold))
                    .padding(.top, 28)
                List{
                    Section {
                        NavigationLink(destination: Profile_AccountInfoView()) {
                                HStack {
                                    Text("Account Information")
                                        .frame(height: 52)
                                    Spacer()
                                }
                            }
                        }
                    Section {
                            NavigationLink(destination: OlderHistoryView()) {
                                HStack {
                                    Text("Older History")
                                        .frame(height: 52)
                                    Spacer()
                                }
                            }
                        }
                    Section {
                            NavigationLink(destination: ShoeSizeView()) {
                                HStack {
                                    Text("Shoe size")
                                        .frame(height: 52)
                                    Spacer()
                                    Text("41,5")
                                        .foregroundColor(Color(red: 0.235, green: 0.235, blue: 0.263, opacity: 0.3))
                                }
                            }
                        }
                    
                    Section{
                        VStack{
                            HStack{
                                Text("How to know your shoe size?")
                                    .frame(height: 52)
                                    .font(.system(size: 17))
                                Spacer()
                                Link(destination: URL(string: "https://www.nike.com/a/how-to-measure-foot-size")!){
                                    Image("link")
                                        .foregroundColor(Color(red: 0.235, green: 0.235, blue: 0.263, opacity: 0.3))
                                }
                            }
                            // MARK: I do not know why when I write 1 Divider it is not visible
                            Divider()
                            Divider()
                            HStack{
                                Text("How to check the authenticity of the shoe?")
                                    .frame(height: 52)
                                    .font(.system(size: 17))
                                    .multilineTextAlignment(.leading)
                                Spacer()
                                // TO DO: make linkd open not through safari
                                Link(destination: URL(string: "https://hypestew.com/blogs/news/legit-check")!){
                                    Image("link")
                                        .foregroundColor(Color(red: 0.235, green: 0.235, blue: 0.263, opacity: 0.3))
                                }
                            }
                        }
                    }
                } .listStyle(.grouped)
                
                //Button sign out
                Button {
                    viewModel.signOut()
                } label: {
                    ButtonSignOut()
                }

               
            }
        }
    }
}

struct ButtonSignOut: View {
    var body: some View {
        ZStack{
            Capsule()
                .frame(height: 54)
                .foregroundColor(.black)
            Text("Sign Out")
                .foregroundColor(.white)
                .font(.system(size: 17, weight: .semibold))
            
        } .padding(.horizontal)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
