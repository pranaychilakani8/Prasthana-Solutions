import UIKit

var greeting = "Hello, playground"




// creating enum for errors

//enum divisionError : Error{
//    case divideByZero
//}
//
//// create a throwinf function
//
//func division(numerator : Int, denominator: Int) throws{
//    if denominator == 0{
//        throw divisionError.divideByZero
//    }
//}
//
//
////function call using try keyword
//
//try division(numerator: 10, denominator: 0)
//
//
//// handling with do - catch block
//
//do{
//    try division(numerator: 10, denominator: 0)
//}
//catch divisionError.divideByZero{
//    print("we cannot divide a number with \"0\" ")
//}
//

//Enum
enum season {
    case spring
    case summmer
    case autum
    case winter
}

//assgin it to the variable

var cuurentSeason : season

//assigning the values

cuurentSeason = season.summmer

print(cuurentSeason)

// using the enum in switch

enum pizzaSize
{
    case small,medium,larger
}

//assign it to variable

var size = pizzaSize.medium

//create the switch

switch(size){
case .small:
    print("The size of the pizza is small....")
case .medium:
    print("The size of the pizza is medium....")
case .larger:
    print("The size of the pizza is larger....")
}


//Iterate the enum

enum Season : CaseIterable{
    case spring,summer,autum,winter,moonsoon
}

// iterate usinf for loop

for i in Season.allCases{
    print(i)
}

// rawvalues

enum Size :Int{
    case small = 10
    case medium = 20
    
}

let result = Size.small.rawValue
print(result)

//Associated values

enum Laptop {
    case price(Int)
    case model(String)
}

var price = Laptop.price(100000)
var model = Laptop.model("MacBook Pro")
print("\(price) \n \(model)")


//error handling
enum pass : Error{
    case toShortPassword
    case Good
    case medium
}

func checkPass(num:String) throws {
    if num.count<8{
        throw pass.toShortPassword
    }
    else if num.count>8 && num.count<=10{
         throw pass.medium
    }
    else if num.count>=10 && num.count<=16{
        throw pass.Good
    }
    else{
         print("Provide the password....")
    }
}

var num = "123456789100"
do{
   var result = try checkPass(num: num)
    print("result : \(result)")
}
          catch  pass.toShortPassword{
        print("It is too short password")
    }
          catch  pass.medium{
        print("It is Medium Password...")
    }
          catch pass.Good{
        print("👍 Good Password....")
    }

