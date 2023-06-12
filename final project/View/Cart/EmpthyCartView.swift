import SwiftUI

struct EmpthyCartView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .top){
                Image("wpVector")
                    .ignoresSafeArea()
                Text("Cart")
                    .font(.system(size: 17, weight: .semibold))
            }
            Text("Cart is empty")
                .font(.system(size: 28, weight: .semibold))
            Text("Find interesting models in the Catalog.")
                .font(.system(size: 17))
                .padding(.top)
            Spacer()
                
        }
    }
}

struct Cart_Empty_Previews: PreviewProvider {
    static var previews: some View {
        EmpthyCartView()
    }
}
