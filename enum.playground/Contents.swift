import UIKit

var greeting = "Hello, playground"

enum season{
    case spring,summer,autum,winter
}

//create enum variable

var currentEnum : season

//assign values to it
currentEnum = season.summer

print("current season : \(currentEnum)")


// using switch case

enum pizza {
    case short ,medium,large
}

// assgin it to variable

var size = pizza.medium

// do operation using seitch case

switch(size){
case .short:
    print("your pizza size is to small...")
case .medium:
    print("your pizza size is to medium...")
case .large:
    print("Your pizza size is to large....")
default:
    print("your a right option....")
}
//iterate over an enum

enum Season:CaseIterable{
    case spring,autum,monsoon
}

for i in Season.allCases{
    print(i)
}

//swift enum with raw values

enum Size : Int{
    case small = 10
    case medium = 20
}

print(Size.small.rawValue)

//swift with associated values
enum laptop{
    case name(String)
    case price(Double)
}

var res = laptop.name("MacBookPro")
print(res)

// with multiple values  ---> to provide additional infromation

enum books{
    case action(String,Int)
    case adventure(String,Double)
}
var result1 = books.action("Evil Deads",340)
var result2 = books.adventure("Racing", 900.9)
print("\(result1)\n\(result2)")

// named associated values
enum Pizza {
    case short(inches:Int)
    case medium(inches:Int)
    case large(inches:Int)
}

var result3 = Pizza.large(inches: 8)
print(result3)
