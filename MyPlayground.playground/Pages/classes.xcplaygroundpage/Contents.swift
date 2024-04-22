//: [Previous](@previous)
/*
class BankAccount{
    var accountBalance: Float = 0
    var accountNumber: Int = 0
    let fees: Float = 20
    
    init(_ balance: Float, _ number: Int) {
        self.accountBalance = balance
        self.accountNumber = number
    }
    var balanceLessFess: Float {
        get {
            return accountBalance - fees
        }
        set(newBalance) {
            accountBalance = newBalance - fees
        }
    }
    
    func displayBalance(){
        print("Account Number is \(accountNumber)")
        print("Current balance is \(accountBalance)")
    }
    class func getMaxBalance() -> Float {
        return 100000.00
    }
}
var account1: BankAccount = BankAccount(400.54, 1234)
print(account1.accountBalance)
print(account1.accountNumber)
account1.accountBalance = 500.31
print(account1.balanceLessFess)
print(BankAccount.getMaxBalance())

##Learning Classes and Structs
 struct Colors{
    var color1 = "Red"
    var color2 = "Blue"
    var color3 = "Yellow"
}
class MyHouses {
    lazy var color = Colors()
    var rent: Int = 12000
}
let myHouse = MyHouses()
var myColors = Colors()
print(myHouse.color.color2)
print(myHouse.rent)
myHouse.color.color2 = "Purple"
print(myHouse.color.color2)
print(myColors.color2)
myColors.color2 = "Purple"
print(myColors.color2)
 
class DataImporter {
    var filename = "file.txt"
}
class DataManager {
    lazy var importer = DataImporter()
    var data: [String] = []
}
let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
print(manager.data)
let newData = DataImporter()
manager.data.append(newData.filename)
print(manager.data)
*/

struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get{
            let centerX = origin.x + (size.width/2)
            let centerY = origin.y + (size.height/2)
            return Point(x: centerX, y:centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - (size.width/2)
            origin.y = newCenter.y - (size.height/2)
        }
    }
}
//: [Next](@next)
