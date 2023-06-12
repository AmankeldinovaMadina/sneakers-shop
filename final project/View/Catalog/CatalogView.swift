import SwiftUI

struct CatalogView: View {
    var body: some View {
        let names: [String] = ["Dolce & Gabbana", "Jordan", "New Balance","Vans Old Skool", "Off-White", "Jordan", "Puma Suede", "New Balance 574"]
        let images: [String] = ["catalog1", "catalog2", "catalog3", "catalog4", "catalog5", "catalog6", "catalog7", "catalog8"]
        let descriptions: [String] = ["Кеды с принтом граффити", "Кеды с принтом граффити", "Иконичная амортизация Air", "Ретро-вид атлетических кроссовок", "Кроссовки Off-Court 3.0", "Кеды с принтом граффити", "Легендарные баскетбольные кроссовки", "Kоллаборация с Канье Уэстом"]
        let prices: [String] = ["$1251", "$1251", "$800", "$870", "$1300", "$478", "$1450", "$1251"]
        ZStack{
            Color(red: 0.965, green: 0.965, blue: 0.9657)
                .ignoresSafeArea()
            
            ScrollView {
                Text("Hello, Sneakerhead!")
                    .font(.system(size: 17, weight: .bold))
           
                    LazyVStack {
                        ForEach(1...4, id: \.self) { index in
                            HStack(spacing: 10){
                                ZStack{
                                    RoundedRectangle(cornerRadius: 4)
                                        .frame(width: 174, height: 282)
                                        .foregroundColor(.white)
                                        .padding(.leading)
                                    VStack(alignment: .leading){
                                        Image(images[index-1])
                                            .resizable()
                                            .frame(width: 166, height: 166)
                                        Text(names[index-1])
                                            .font(.system(size: 13,weight: .semibold))
                                        Text(descriptions[index-1])
                                            .font(.system(size: 12))
                                            .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.576))
                                        Text(prices[index-1])
                                            .font(.system(size: 12, weight: .semibold))
                                        Button {
                                            //here you will add logic
                                        } label: {
                                            ZStack{
                                                Capsule()
                                                    .frame(height: 40)
                                                    .foregroundColor(.black)
                                                Text("Add to cart")
                                                    .foregroundColor(.white)
                                            }
                                        }
                                        
                                        
                                    }.padding(.leading,20)
                                }
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 4)
                                        .frame(width: 174, height: 282)
                                        .foregroundColor(.white)
                                        .padding(.trailing)
                                    VStack(alignment: .leading){
                                        Group{
                                            Image(images[8-index])
                                                .resizable()
                                                .frame(width: 166, height: 166)
                                            Text(names[8-index])
                                                .font(.system(size: 13,weight: .semibold))
                                            Text(descriptions[8-index])
                                                .font(.system(size: 12))
                                                .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.576))
                                            Text(prices[8-index])
                                                .font(.system(size: 12, weight: .semibold))
                                        }.padding(.leading,4)
                                        Button {
                                            //here you will add logic
                                        } label: {
                                            ZStack{
                                                Capsule()
                                                    .frame(height: 40)
                                                    .foregroundColor(.black)
                                                Text("Add to cart")
                                                    .foregroundColor(.white)
                                            }
                                        }
                                    } .padding(.trailing,20)
                                }
                                
                            }
                        }
                 }
            }
        }
    }
}



struct Catalog_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
