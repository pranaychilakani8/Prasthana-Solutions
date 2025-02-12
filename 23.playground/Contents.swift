import UIKit

//var greeting = "Hello, playground"
//var str = "HelloWorld"
//let result = str.replacingOccurrences(of: "l", with: "")
//print(result)
//let res = String(str.filter({$0 != "l"}))
//print(res)
//
//var a1 = [1,3,7,9,0]
//let asc = a1.sorted(by: <)
//print(asc)
//let des = a1.sorted(by: >)
//print(des)
//
//func fibo(num:Int)->Int{
//    if num == 0{
//        return 0
//    }
//    else if num == 1{
//        return 1
//    }
//    else{
//        return fibo(num: num - 1) + fibo(num: num - 2)
//    }
//}
//let num = 10
//for i in 0..<num{
//    print(fibo(num: i))
//}
//
//var n1 = 5
//var fact = 1
//for i in 1...n1{
//    fact = fact * i
//}
//print(fact)
//
//func swap(a:inout Int,b:inout Int)
//{
//    a = a + b
//    b = a - b
//    a = a - b
//    print(a)
//    print(b)
//}
//var a = 5
//var b = 6
//swap(a: &a, b: &b)
//
//var a2 = [1,2,4,6,8]
//
//let rev = Array(a2.reversed())
//
//print(rev)
//
//var a3 = [2,3,1,4,5,6,67,7,8,8,2,1]
//print(Array(Set(a3)))
//
////var word = "hello present i am learning swift"
////var sp = word.split(separator: " ")
////var max = sp.max{$0.count < $1.count}
////print(max!)
////
////for i in stride(from: 10, through: 1, by: -1)
////{
////    print(i)
////}
////var smallestWord = "hi i am pranay"
////var splitWord = smallestWord.split(separator: " ")
////var converToSmall = splitWord.max{$0.count > $1.count}
////print(converToSmall!)
////
////enum checkURL : Error{
////    case badURL
////    case GoodURl
////}
////func fetchURL(URL : String) throws{
////    if URL.starts(with: "http")
////    {
////        print("Safe URL...")
////    }
////    else{
////        throw checkURL.badURL
////    }
////}
////
////do{
////    try fetchURL(URL: "http.google.com")
////}
////catch checkURL.GoodURl{
////    print("Good url...")
////}
////catch checkURL.badURL{
////    print("bad url...")
////}
//
//func prime(num:Int)
//{
//    var count = 1
//    for i in 2...num{
//        if num % i == 0{
//            count += 1
//        }
//    }
//    if (count == 2){
//        print("prime")
//    }
//    else{
//        print("not prime...")
//    }
//}
//prime(num: 6)
//
//////check for anagram
////func checkAnagram(string1:String ,string2 :String)->Bool{
////    //first sort the two strings
////    let s1 = string1.sorted()
////    let s2 = string2.sorted()
////    
////    return s1 == s2
////}
////checkAnagram(string1: "silent", string2: "listen")
////var count = 0
////for i in 10...100{
////    let sq = Int(sqrt(Double(i)))
////    if sq * sq == i{
////        count += 1
////    }
////}
////print(count)
////
////func countOccurrences(of character: Character, in string: String) -> Int {
////    // Your code here
////    let count = string.filter({$0 == character}).count
////    return count
////}
////let res4 = countOccurrences(of: "a", in: "pranay")
////print(res4)
//
//
////largest
//var arr = [1,4,3,2,6]
//var largest = 0
//for i in 0..<arr.count{
//    if i > largest{
//        largest = arr[i]
//    }
//}
//print(largest)
//func sumOfArray(_ numbers: [Int]) -> Int {
//    // Your code here
//    return numbers.reduce(0, +)
//}
//var a6 = [7,9,0,9]
//let r = sumOfArray(a6)
//print(r)

enum bankError : Error{
    case invalidNumber
    case amountInsufficient
    case accountNumberInvalid
}
class bank{
    private var accountNumber :Int = 0
    var accountName : String = ""
    private var balance : Int = 0
    
    func deposit(addBalance amount:Int)
    {
        balance += amount
        print("Status of your balance : \(balance)")
    }
    
    func withdrawAmount(amount:Int) throws
    {
        if balance >= 0 {
            balance -= amount
            print("withdrawn amount \(amount)from bank and available balance is :\(amount - balance)")
        }else{
            throw bankError.amountInsufficient
        }
    }
    func generateAccountNumber(accountNum : Int)
    {
        accountNumber += accountNum
    }
    func setAccountName(name : String)
    {
        accountName += name
    }
    
    
}

let bank1 = bank()
bank1.setAccountName(name: "pranay kumar")
bank1.generateAccountNumber(accountNum: 12345678)
bank1.deposit(addBalance: 1000)
try bank1.withdrawAmount(amount: 10000)
do{
    try  bank1.withdrawAmount(amount: 1000)
}
catch bankError.amountInsufficient{
    print("Insufficient my dear user...")
}

//func twosum(arr:[Int],target:Int)->[Int]?{
//    for i in 0..<arr.count{
//        for j in i+1..<arr.count{
//            if arr[i] + arr[j] == target{
//                return [i,j]
//            }
//        }
//    }
//    return nil
//}
//let arr = [1,2,3,4,5,6,7,8]
//let res = twosum(arr: arr, target: 8)
//print(res!)

func insertion(arr: inout [Int])
{
    for i in 1..<arr.count{
        var j = i - 1
        let key = arr[i]
        
        while j >= 0 && arr[j] > key{
            arr[j + 1] = arr[j]
            j -= 1
        }
        arr[j + 1] = key
    }
}
var arr = [3,4,5,7,2,1]
insertion(arr: &arr)
