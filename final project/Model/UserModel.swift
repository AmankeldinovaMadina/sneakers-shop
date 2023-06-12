import Foundation


struct User: Identifiable, Codable {
    var id: String
    let email: String
    let password: String
}


extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, email: "madina.amankeldinova5gmail.com", password: "n!Top")
}
