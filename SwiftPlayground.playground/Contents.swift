import UIKit

var greeting = "Hello, playground"

greeting = "Hello, Ahmadov"

let constStr = greeting

var nextYear : Int
var bodyTemp : Float
var hasPet : Bool

var arrayOfInts : [Int]
var disctonaryOfCapitalsByCountry : [String: String]
var winningLotteryNumbres: Set<Int>


let number = 42
let fmStation = 91.1

var countingUp = ["one","two"]
var  nameByParkingSpace = [13: "Yusif", 56: "Ahmad"]

countingUp[1]

let emptyString = String()
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()

let defaultNumber = Int()
let defaultBool = Bool()

let meaningOfLife = String(number)

let availabeRooms = Set([22,22,222,221,123])

let defaultFloat = Float()
let floatFromLiteral = Float(32.8)
let float2FromLiteral : Float = 32.8

countingUp.count
emptyString.isEmpty

countingUp.append("third")

let şəxsi = "şəxsi"
let 😞 = "Sad"

var anOptonalFloat : Float?
var anOptionalArrayOfOptionalFloats : [Float?]?

var reading1 : Float?
var reading2 : Float?
var reading3 : Float?

reading1 = 9.8
reading2 = 9.4
reading3 = 9.5

if let reading1 = reading1,
   let reading2 = reading2,
   let reading3 = reading3 {
   (reading1+reading2+reading3)/3
}else{
    print("reading is missing")
}


 

for i in 0..<3{
    print(i)
}

for string in countingUp{
    print(string)
}
for (index, string) in countingUp.enumerated(){
    print("\(index): \(string)")
}
nameByParkingSpace[15] = "Jalal"

for (key,value) in nameByParkingSpace{
    print("\(key): \(value)")
}


enum PieType : String{
    case apple = "Apple Pie"
    case apricot = "Apricot Pie"
    case peach = "Peach Pie"
}

let favoritePie = PieType.peach

let name : String
//switch favoritePie{
//case .apple:
//    name = "Apple Pie"
//case .apricot:
//    name = "Apricot Pie"
//case .peach:
//    name = "Peach Pie"
//
//}
favoritePie.rawValue
let macosVersion : Int = 5
switch macosVersion{
case 0...8:
    print("A big cat")
case 9:
    print("Mavericks")
case 10:
    print("Yosemite")
default:
    print("Wow, new Mac version")
}


class ClassName {
    
}

struct StructName{
    
}
