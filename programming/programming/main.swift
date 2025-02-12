//
//  main.swift
//  programming
//
//  Created by Ch Pranay on 15/01/25.
//

import Foundation

print("Hello, World!")

// revrese a string
//print("enter the string :")
//var str = readLine()
//var rev = ""
//for char in str!{
//    rev = String(char) + rev
//}
//print("reverse :\(rev)")

//with built-in function
//print("enter the string:")
//var str = readLine()
//let result = String(str!.reversed())
//print("reversed :\(result)")


//2 palindrome
//print("enter the string :")
//var str = readLine()
//if str == String(str!.reversed()){
//    print("palindome")
//}
//else{
//    print("not palindrome")
//}


//3 occurances of a character
//print("enter the string :")
//var str = readLine()
//print("enter a character")
//var ch = readLine()
//var count = 0
//for char in str!{
//    if Character(ch!) == char{
//        count += 1
//    }
//}
//print("count : \(count)")

//using buitl in methods
//var str = readLine()
//print("enter the character")
//var char = readLine()
//let result = str!.filter({$0 == Character(char!)}).count
//print("count :\(result)")


// 4 vowels
//var str = readLine()
//
//var countVowels = 0
//var countConsotants = 0
//for char in str!{
//    if "aeiouAEIOU".contains(char)
//    {
//        countVowels += 1
//    }
//    else{
//        countConsotants += 1
//    }
//}
//print("count of vowels :\(countVowels)\n count of consosants :\(countConsotants)")

//using built in methods
//var str = readLine()
//let result = str!.filter({"aeiouAEIOU".contains($0)}).count
//print(result)


// 5 matching elements
//print("enter the array elements:")
//    var arr = [1,2,3,3,4,5,6]
//    for i in 0..<arr.count{
//        var matchFound = false
//        for j in i+1..<arr.count{
//            if arr[i] == arr[j]
//            {
//                print(arr[i])
//                break
//            }
//        }
//    }

//bubble sort
//func bubbleSort(arr: inout [Int]){
//    for i in 0..<arr.count{
//        for j in 0..<arr.count-i-1{
//            if arr[j] > arr[j+1]
//            {
//                let temp = arr[j]
//                arr[j] = arr[j+1]
//                arr[j+1] = temp
//            }
//        }
//    }
//}
//var arr = [2,3,4,1,7,6,5,8]
//bubbleSort(arr: &arr)
//print(arr)

//inserion sort
//func insertionSort(arr: inout[Int])
//{
//    for i in 0..<arr.count{
//        var j = i
//       while j>0 && arr[j] < arr[j-1]
//        {
//           let temp = arr[j]
//           arr[j] = arr[j - 1]
//           arr[j - 1] = temp
//       }
//    }
//}
//var arr = [1,2,3,4,5]
//insertionSort(arr:&arr)
//print(arr)

//sum of all elements
//var num = 87878
//var sum = 0
//while num > 0{
//    let ld = num % 10
//    sum = sum + ld
//    num = num / 10
//}
//print("sum : \(sum)")

//reverse an array
//var arr = [1,3,2,4,5]
//var rev = [Int]()
//let result = Array(arr.reversed())
//let result = Array(arr.sorted{$0 > $1})

//using manual
//for i in 0..<arr.count{
//    //rev.insert(arr[i], at:0)
//    rev = [arr[i]] + rev
//}
//print(rev)

// swap the numbers without using thrid variable
//func swap(a: inout Int,b: inout Int){
//    a = a + b
//    b = a - b
//    a = a - b
//    print(a)
//    print(b)
//}
//var x = 5
//var y = 6
//swap(a: &x, b: &y)
//

//factorial
//func fact(num:Int){
//    var fact = 1
//    for i in 1...num{
//        fact = fact * i
//    }
//    print(fact)
//}
//fact(num: 5)

//fibo
//func fibo(num:Int){
//    var a = 0
//    var b = 1
//    for i in 1...num{
//        let sum = a + b
//        print(sum)
//        a = b
//        b = sum
//    }
//}
//fibo(num: 10)

//second largest
//var arr = [1,2,43,56,90]
//let secondLargest = arr.sorted{$0 > $1}
//print(secondLargest[1])

//removeALl occurance

//var str = "pranay"
//var ch = "a"
//let res = str.replacingOccurrences(of: ch, with: "")
//print(res)
//print("enter the string :")
//var str = readLine()
//print("enmter the character :")
//var ch = readLine()
//let res = str!.replacingOccurrences(of: ch!, with: "")
//print(res)

//prime
//print("enter the number :")
//var num = readLine()
//var number = Int(num!)
//var count = 1
//for i in 2...number!{
//    if (number!) % i == 0{
//        count += 1
//    }
//   
//}
//if count == 2{
//    print("Given number \(number!) is prime")
//}
//else{
//    print("Given number  \(number!) is not prime")
//}


var str = "helloworld"
var res = str
