//
//  main.swift
//  pratice
//
//  Created by Ch Pranay on 03/01/25.
//

import Foundation

print("Hello, World!")

// compound and assignment operator

//1
//var x = 5
//x += 5
//print(x)

//2
//var x = 5
//x -= 3
//print(x)

//3
//var x = 5
//x *= 3
//print(x)


//4
//var x=5
//x /= 1
//print(x)

//5
//var x = 5
//x%=1
//print(x)
//--------------------------------------
// range operator
//closed range

//for i in 1...5{
//    print(i)
//}
//
//let x = 3
//if (1...5).contains(x){
//    print(x)
//}
//-------------------------------------------

// half open Range operator

//for i in 1..<3{
//    print(i)
//}
//
//let x = 4
//if(1..<5).contains(x){
//    print(x)
//}

//-------------------------

// open sided  range
// lower range
//let range = 1...
//for i in range{
//    print(i)
//}

//for i in range.prefix(5){
//    print(i)
//}

//----------------------------------

//ternary operator

//print(2>5 ? "true" : "false")
//var num1 : Int = 2
//var num2 : Int = 5
//let res = (num1 > num2) ? "true" : "false"
//print(res)
//

//nil coalescing operator
//var name : String?
//var default1 = "kumar"
//
//let user = name ?? default1
//print(user)
//
//let customerName = "pranay"
//print(customerName ?? ("kumar"))


//--------------------------
//let a = 5
//let b = 3
//let res = a & b
//print(res)


//let res = a | b
//print(res)

//let res = a ^ b
//print(res   )

//let num1 = UInt8.max
//print(num1)
//
//let num2 = Int16.min
//print(num2)


//-----------------------
//for i in 1...5{
//    print(i)
//}
//var count = 0
//for _ in 1...5{
//    count += 1
//}
//print(count)

//let arr = ["apple","banana","cherry"]
//for a in arr{
//    if a.contains("a") || a.contains("A")
//    {
//        print(a)
//    }
//   
//}


//var num = [1,2,3,4]
//
//var store :[Int] = [ ]
//for i in num{
//    store.append(i*i)
//}
//print(store)

//let number = [3,5,76,12,4]

//for _ in number{
//    print("Hello world...")
//}

//
//for x in stride(from: 1, to: 10, by: +1){
//    print(x)
//}

//for i in 1...10 where i % 2 == 0{
//    print(i)
//}

//------------------------------------
//
//var num = 1
//var sum = 0
//
//while num <= 9 {
//    sum = sum + num
//    num = num + 1
//}
//print(sum)


//-----------------------------
//var num = 10
//repeat {
//    print(num)
//    num -= 1
//}while num>0

//var sum = 0
//var num = 5
//repeat {
//    sum = sum+num
//    num += 1
//}while num <= 10
//print(sum)

//let nums = [30, 2, 14, 7, 19, 11, 13, 10]
//
//for i in nums{
//    
//    if i % 2 == 1{
//        continue
//    }
//    else{
//        print(i)
//    }
//}
//
//let arr = [11, 12, 23, -4, 88, 92, 34, 2]
//
////skip the -4
//
//for i in arr {
//    if i == -4{
//        continue
//    }
//    else{
//        print(i)
//    }
//}

//var i = 1
//while i < 10{
//    i = i + 1
//    if i % 2==1{
//        continue
//    }
//    print(i)
//}

//var x = 1...5
//for i in x {
//    if i == 3{
//        break
//    }
//    else{
//        print(i)
//    }
//}

//let x = 10
//if x > 9 {
//print("\(x) is greater than 9!")
//}

//var num = 100
//if num <= 1{
//    print("num is less than 500")
//}
//else if(num==100)
//{
//    print("It is equal...")
//}
//else{
//    print("Out of Range...")
//}


//var marks : Int = 85
//
//if marks >= 85{
//    print("first class...")
//}
//else if(marks >= 75 && marks <= 84){
//    print("second class")
//}
//else{
//    print("pass")
//}


//var varA:Int = 100;
//var varB:Int = 200;
//
//if varA == 100 {
//    print("first condition statisfies...")
//    if(varB == 200)
//    {
//        print("second condition also statisifies...")
//    }
//}

//var numbers = [1, 2, 3, -4, 5, -6, 7]
//
//for i in numbers{
//    guard i > 0 else{
//        print("skipping neagtives values :\(i)")
//        continue
//    }
//    print(i)
//}

//------------------------

//let value = 2
//switch (value){
//case 1:
//    print("one")
//case 2:
//    print("two")
//case 3:
//    print("three")
//case 4:
//    print("four")
//default:
//    print("Not specified the correct value...")
//}


//let num = 3
//switch num{
//case 1,2,3:
//    print("85 marks")
//
//case 4:
//    print("86 marks")
//case 5:
//    print("87 marks")
//default:
//    print("Integer out of range...")
//}


//let temperature = 45
//switch temperature{
//case 0...25:
//    print("cold")
//case 26...35:
//    print("warm")
//case 36...45:
//    print("too Hot")
//default:
//    print("okk....")
//}

//let temperature = 45
//switch temperature{
//case 0...25 where temperature % 2 == 0:
//    print("cold and even")
//case 26...35 where temperature % 2 == 0:
//    print("warm and even")
//case 36...45 where temperature % 2 == 0:
//    print("too Hot and even")
//default:
//    print("okk....")
//}

////---------------------------
//let week = 3
//switch (week)
//{
//case 1:
//    print("Monday")
//case 2:
//    print("Tuesday")
//case 3:
//    print("Wednesday")
//case 4:
//    print("Thursday")
//case 5:
//    print("Friday")
//case 6:
//    print("Saturday")
//case 7:
//    print("Sunday")
//default:
//    print("Invalid Integer")
//}


//-------------------------------------------

//FUNCTIONS

//func greet(name : String){
//    print("Hello \(name)")
//}
//greet(name: "pranay")

//returning with function
//func sayGreet(name:String) -> String{
//    return  "Hello Mr.\(name),Good Evening"
//}
////let p = sayGreet(name: "pranay kumar")
////print(p)
//let p = sayGreet(name: "pranay")
//print(p)

//func buildMessageFor(name: String, count: Int) -> String {
//    let upperCased = name.uppercased()
//    return "\(upperCased), you are customer number \(count)"
//}
//let p = buildMessageFor(name: "pranay", count: 3)
//print(p)


//func n(name:String,num:Int)->(String){
//    "\(name),your ,\(num)"
//}
//let p = n(name: "pranay", num: 3432)
//print(p)


//func greet(person name : String){
//    print(name)
//}
//greet(person: "pranay")

//func greet(_ id:Int,_ age : Int)->(Int,Int){
//    return (id,age)
//    
//}
//let p = greet(2, 22)
//print(p)


//func greet(_ name:String){
//    print(name)
//}
//greet("pranay")


//func greet(number num:Int...)->Int {
//    var total = 0
//    for n in num{
//        total = total + n
//    }
//    return total
//}
//let p = greet(number: 1,2,3,4,5)
//print(p)
//
//func names(person name:String...)
//{
//    print(name)
//}
//names(person: "p","r","a","n","a","y")



