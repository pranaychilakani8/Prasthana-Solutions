import UIKit

var greeting = "Hello, playground"

// enum is short hand of (enumeration) it is used to group the related values toegther under one name

enum first{
    case one
    case two
    case three//values
}
//first.one = four //we can change the values.It is immutable
//print(first.one)

enum season{
    case spring,summer,autumn,winter
}
//create a enum varaible
var currentSeason : season

// assign it to a variable
currentSeason = season.autumn
print(currentSeason)


//using switch statement
enum pizza {
    case small,medium,large
}

//now create a variable
var size : pizza

//assign value to enum variable
size = pizza.medium

switch(size)
{
case .small:
    print("6 inch pizza...")
case .medium:
    print("8 inch pizza...")
case .large:
    print("12 inch piza...")
}

//Iterating the enum
enum Season : CaseIterable{
    case spring,autum,moonsoon,winter
}
for i in Season.allCases{
    print(i)
}

enum Size:Int{
    case a = 10
    case b = 20
    case c = 30
}
var size1 = Size.a.rawValue
print(size1)
//enum with associated values
enum Laptop{
    case name(String)
    case price(Double)
    case model(String)
}
var laptopName = Laptop.name("MacBookPro")
var laptopPrice = Laptop.price(100002.90)
var laptopModel = Laptop.model("Apple m1 chip")
print("\(laptopName)\n\(laptopPrice)\n\(laptopModel)")


//with multiple asscoiated Values
enum marks{
    case gpa(Double,Double,Double)
    case percentage(Int,Int,Double)
}
var Marks = marks.gpa(9.0, 8.81, 9.25)
var per = marks.percentage(90, 80, 9.2)
print("\(Marks)\n\(per)")

//Named Assoicated Values
enum coldDrinks {
    case small(ml : Int)
    case medium(ml : Int)
    case large(ml : Int)
}
var result = coldDrinks.medium(ml: 200)
print(result)

//enum associated values and switch statement
enum carDetails{
    case mercedes(price : Double)
    case jaquar(price : Double)
    case bmw(price : Double)
}
var car1 = carDetails.jaquar(price: 20.8900)
switch(car1){
case let .mercedes(price: price):
    print("price :\(price)")
case let .jaquar(price: price):
    print("price :\(price)")
case .bmw(price: let price):
    print("price :\(price)")
}

