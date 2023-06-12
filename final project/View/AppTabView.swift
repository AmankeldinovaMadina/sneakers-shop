import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
                   CatalogView()
                       .tabItem {
                           Image(systemName: "house.fill")
                           Text("Catalog")
                       }
                   
                  EmpthyCartView()
                       .tabItem {
                           Image(systemName: "cart.fill")
                              
                           Text("Cart")
                       }
                   
                  ProfileView()
                       .tabItem {
                           Image(systemName: "person.crop.circle.fill")
                           Text("Profile")
                       }
        } .accentColor(.black)
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
