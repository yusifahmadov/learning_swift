import UIKit

//Optional
var number1 : Int?
var number2 : Int?

number1 = 1
number2 = 2

if let number1 = number1, let number2 = number2{
    print(number1+number2)
}

func checkNumber()-> String{
    guard let number1 = number1 else {return "number1 is required"}
    guard let number2 = number2 else {return "number2 is required"}
    
    return "\(number1 + number2)"
}
print(checkNumber())


// Class vs Struct
class BaseUser{
    
}

final class User : BaseUser{
    var name: String
    init(name: String){
        self.name = name
    }
    
}


var user1 :User = User(name: "Yusif")
var user2 :User = user1

user2.name = "Ahmadov"
print(user1.name)
print(user2.name)




struct SuperUser{
    var name : String
}

var superUser1 : SuperUser = SuperUser(name: "Yusif")
var superUser2 : SuperUser = superUser1

superUser2.name = "Ahmadov"

print(superUser1.name)
print(superUser2.name)
