import SwiftUI

struct CartView: View {
    var body: some View {
        VStack{
            Text("Cart")
                .foregroundColor(.black)
                .font(.system(size: 17, weight: .semibold))
                .padding(.top, 28)
            
            Spacer()
            ConfirmButton()
        } .padding(.horizontal)
    }
}


struct ConfirmButton: View {
    var body: some View{
        ZStack{
            Capsule()
                .foregroundColor(.black)
                .frame(height: 54)
            Text("Confirm Order")
                .foregroundColor(.white)
                .font(.system(size: 17, weight: .semibold))
        }
    }
}
struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
