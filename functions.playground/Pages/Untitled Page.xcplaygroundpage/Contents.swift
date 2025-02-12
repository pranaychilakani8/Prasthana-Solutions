import UIKit

//var greeting = "Hello, playground"
//print(greeting)
//
//func addition(){
//    print(10 + 20)
//}
//addition()
//
//func add(a : Int ,b :Int){
//    print(a + b)
//}
//add(a: 20, b: 30)
//
//func add(a:Int,b:Int,c:Int) -> Int{
//    return a+b+c
//}
//let res = add(a: 2, b: 2, c: 2)
//print(res)
//
//func sub(a:Int,b:Int) -> (Int,String){
//    let sub = a - b
//    return (sub,"subtraction of two numbers....")
//}
//let r = sub(a: 5, b: 2)
//print(r)
//
//func cal(num1 x:Int,num2 y:Int) -> Int{
//    return x+y
//}
//let calc = cal(num1: 3, num2: 5)
//print(calc)
//
//
//func mul(_ a:Int, _ b:Int) -> Int{
//    return a*b
//}
//let m = mul(4, 5)
//print(m)
//
//func varadic(a:Int...,b:Int...)
//{
//    print(a)
//    print(b)
//    print(a+b)
//}
//varadic(a: 1,2,3,4, b: 5,6,7,8)

//func sizeConverter(_ length:Float) -> (yards:Int,centimeter:Int,meters:Int){
//    let yards = 10
//    let centimeter = 20
//    let meters = 30
//    return(yards, centimeter, meters)
//}
//let res = sizeConverter(20.0)
//print(res.centimeter)
//print(res.meters)
//print(res.yards)
//
//func name(_ first:String,_ age:Int,_ height:Int) -> (String,Int,Int){
//    return(first,age,height)
//}
//let r = name("Pranay",22,56 )
//print(r)

//var x = 10
//var y = 20
//func sum(_ num:inout Int , _ b: inout Int){
//    let temp = num
//    num = b
//    b = temp
//    print(num)
//    print(b)
//}
//sum(&x,&y)

//check even or odd
func even(a:Int) ->Bool{
    if(a % 2 == 0)
    {
        return true
    }
    return false
}
let res = even(a: 20)
print(res)

func sum(a:Int,b:Int)->Int{
    return a+b
}
let Sum = sum(a: 20, b:30)
print(Sum)

func max(a:Int,b:Int)->Int{
    if (a < b)
    {
        return b
    }
    else{
        return a
    }
}
let Max = max(a: 20, b: 30)
print(Max)


func rev(name:String)->String{
    var rev = ""
    for char in name{
        rev = String(char) + rev
    }
    return rev
}
let Reverse = rev(name: "pranay")
print(Reverse)

func sumOfDigits(number:Int){
    var num = abs(number)
    var sum = 0
    while num > 0{
        let ld = num % 10
        sum = sum + ld
        num = num / 10
    }
    print(sum)
}
sumOfDigits(number: 12345)


var sum = { (a:Int,b:Int) in
    print(a+b)
}
sum(a: 20, b:30)

