import UIKit

var str = "Hello, playground"

// class
class User {
    // プロパティ
    public let name: String;
    public let age: Int;
    
    // イニシャライザ
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    // メソッド
    func introduceMySelf(){
        print(self.name)
        print(self.age)
        print("I'm \(self.name). My Age is \(self.age).")
    }
}

let user = User(name: "takumi", age: 30)
user.introduceMySelf()

class PremiumUser: User {
    // プロパティ
    private let premiumFlg: Bool
    
    // イニシャライザ
    init(name: String, age: Int, premiumFlg: Bool) {
        self.premiumFlg = true
        super.init(name: name, age: age)
    }
    
    // メソッド
    override func introduceMySelf(){
        print(super.name)
        print(super.age)
        print(self.premiumFlg)
    }
}
let premiumUser = PremiumUser(name: "takumi", age: 30, premiumFlg: true)
premiumUser.introduceMySelf()

// struct
struct Book{
    public let name: String
    public let price: Int
}

// メンバーワイズイニシャライザ（memberwise initializer）
let book = Book(name: "Swift Book", price: 10000)
print(book.name)
print(book.price)
