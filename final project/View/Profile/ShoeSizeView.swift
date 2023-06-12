import SwiftUI

struct ShoeSizeView: View {
    @State private var numberText: String = ""
    @State private var shoeSizetextField = false
    var body: some View {
        VStack{
            TextField("Enter numbers", text: $numberText, onEditingChanged: { _ in
                let filtered = numberText.filter { "0123456789".contains($0) }
                if filtered != numberText {
                    numberText = filtered
                }
            })
            .keyboardType(.numberPad)
            .onTapGesture {
                shoeSizetextField.toggle()
            }
            .frame(height: 48)
            .background(RoundedRectangle(cornerRadius: 2)
                .stroke(shoeSizetextField ? Color.black : Color.gray, lineWidth: 2))
            .padding(.top, 26)
            Spacer()
            ShoeSizeChangeButton()
        }
        .padding(.horizontal)
    }
}

struct ShoeSizeChangeButton: View {
    var body: some View {
        ZStack{
            Capsule()
                .frame(height: 54)
                .foregroundColor(.black)
            Text("Save changes")
                .foregroundColor(.white)
                .font(.system(size: 17, weight: .semibold))
        }
    }
}

struct ShoeSizeView_Previews: PreviewProvider {
    static var previews: some View {
        ShoeSizeView()
    }
}
