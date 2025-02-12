import UIKit

var greeting = "Hello, playground"

//reverse a string using built in method

//var str = "pranay"
//let rev = String(str.reversed())
//print(rev)
//
//var reve = ""
//for char in str{
//    if char.isLetter{
//        reve = String(char)+reve
//    }
//    else{
//        print("No")
//    }
//}
//print(reve)
//
//var word = "mom"
//
//if String(word.reversed()) == word{
//    print("palindrome")
//}
//else{
//    print("not palindrome")
//}
//
//
//var tuple1 = (name : "pranay",age : 22)
//tuple1.1 = 23
//print(tuple1.1)
//
//var str = "pranay"
//var chara = "a"
//var count = 0
//for char in str{
//    if chara.contains(char){
//        count += 1
//    }
//}
//print(count)
//


//1
func reverse(name : String)->String{
    let rev = String(name.reversed())
    return rev
}
reverse(name: "pranay")

//without in built methods

//var name = "pranay"
//var rev = ""
//for char in name{
//    rev = String(char)+rev
//}
//print(rev)


//2 palindrome
func checkPalindrome(name :String)->Void{

    if name == String(name.reversed())
    {
        print("plaindrome")
    }
    else{
        print("Not Palindrome")
    }
}
checkPalindrome(name: "mom")

//check the occurance of the character
func checkOccuraance(name:String,character : Character)->Int{
    return name.filter{$0 == character}.count
}
checkOccuraance(name: "pranay", character: "a")

// 3 count vowels and constant in string
var name = "pranaykumar"
var vowelCount = 0
var constantCount = 0
for char in name{
    if "aeiouAEIOU".contains(char){
        vowelCount += 1
    }
    else{
        constantCount += 1
    }
}
print("\(vowelCount)\n\(constantCount)")

//replace all the vowels with whitespace
var str = "pranay"
var result = ""
for char in str{
    result += String(char).replacingOccurrences(of: "aeiouAEIOU", with: " ")
}
print(result)


var arr :[Int] = [1,2,3,2,1,3,4]

//for i in arr{
//    if arr.filter{$0 == i}.count>1{
//        print(i)
//        arr = arr.filter{$0 != i}
//    }
//}
//

for i in 0..<arr.count{
    for j in i+1..<arr.count{
        if arr[i] == arr[j]{
            print(arr[i])
            break
        }
    }
}

//
//func bubbleSort(arr : inout [Int])
//{
//    let n = arr.count
//    
//    for i in 0..<n
//    {
//        for j in 0..<n-i-1{
//            if arr[j] > arr[j+1]
//            {
//                let temp = arr[j]
//                arr[j] = arr[j+1]
//                arr[j+1] = temp
//            }
//        }
//    }
//}
//var arr = [8,9,5,6,7,3,2,1]
//bubbleSort(arr: &arr)

//fibonacci series
func fibo(n:Int){
    var a = 0
    var b = 1
    for _ in 0..<n{
        let temp = a + b
        print(temp)
        a = b
        b = temp
    }
}
fibo(n: 10)

func fatorail(num:Int)
{
    var fact = 1
    for i in 1...num{
        fact = fact * i
    }
    print(fact)
}
fatorail(num: 5)

func secondArray(arr:[Int]){
    var sortedArray = arr.sorted{$0 > $1}
    print(sortedArray[1])
}
let arr1 = [1,5,6,4,0,78,98]
secondArray(arr: arr1)


var number1 : Any = 90

if number1 is Int{
    print("true")
}
else{
    print("false")
}


//check a given is prime or not

func checkPrime(num:Int)->Void{
    
}
