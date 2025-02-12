//: [Previous](@previous)

//import Foundation
//
//var greeting = "Hello, playground"
//
////: [Next](@next)



//operators

// 1. Arithematic operator

//var num1 = 5
//var num2 = 5
//var add = num1+num2
//var sub = num1-num2
//var Mul = num1*num2
//var Rem = num1/num2
//var Mod = num1%num2
//print(add);print(sub);print(Mul);print(Rem);print(Mod)
//
//let str1 = "Swift"
//let str2 = "programming"
//
//let str = str1+str2
//print(str)

//Comparsion Operator
//equal
//let pass = "prasthana"
//if(pass == "prasthana")
//{
//    print("Correct")
//}
//else
//{
//    print("Not Correct")
//}
//    //not equal
//var str1="Hi"
//if(str1 != "Hello")
//{
//    print("Yes it is not equal")
//}
//else{
//    print("No")
//}

//greater than
let arr = [3, 55, 2, 44, 66]
var sum = 0
for i in arr{
    if(i>50)
    {
        sum = sum + i
    }
}
print(sum)

//less than
//var num1 = 190
//var num2 = 10
//if(num1 < num2){
//    print("It is less than")
//}
//else
//{
//    print("It is greater than")
//}

//>=
//let age = 18
//if (age<=18)
//{
//    print("Eligible to voting")
//}
//else{
//    print("Not Eligible for voting...")
//}

//Assignment Operator

//var x:Int?
//var y:Int = 10
//
//x=10
//x=x!+y
//x=y
//print(x!)


//Unary Operators

//var x = -5
//x = x - 5
//print(x)

//let a = 5
//let positiveA = +a
//print(positiveA)
//
//let a = 5
//let neagtivea = -5
//print(neagtivea)


//let a = 5
//print(-a)
//
//let b = -5
//print(+b)

//let isTrue = !true
//print(isTrue)

//let a: Int? = 42
//let unwrappedA = a!
//print(unwrappedA)

//logical operator

//let height = 55
//let age = 20
//
//if(age > 18) && (height < 60)
//{
//    print("You are eligible for police exam...")
//}
//else{
//    print("No you are not eligible for ploce exam...")
//}

//let marks = 88
//let exp = 2
//if(marks > 85) || (exp > 1)
//{
//    print("you can work...")
//}
//else{
//    print("no you cannot work...")
//}
//
//var a = 20
//if !(a>0){
//    print("true")
//}
//else{
//    print("false")
//}


let password = "vsv@v3"
let username = "mona"
let mainPassword = "MO@12s"

if(username == "mona" || password == "123") && mainPassword == "MO@12s"{
    print("Welcome ,to open digi locker")
}
else{
    print("Nooo")
}

