import UIKit

var greeting = "Hello, playground"

//tuple
//var product = ("macbook",1900000.90)
//
//// access tuple elements
//print(product.0)
//print(product.1)
//
////modifying the elements
//product.1 = 89.000000
//print(product.1)
//
////providing the names to the tuples
//var company = (LaptopName : "apple",processor : "m1")
//print(company.LaptopName)
//
////nested tuple
//var alphabets = ("a","b","c","d",("e","f","g","h"))
//print(alphabets.4.2)
//
//
////optional
//var name : String?
//name = "john"
//print(name)
//
////unwrapping the optional
//print(name!)
//
//var address: String? = nil
//// Output: Address is unavailable (if address is nil)
//print(address)
//
////optional chaining
//class person{
//    var name : String?
//    
//    func greetFunction(){
//        
//    }
//}
//
////nil coalescing
//var str : String?
//let res = str ?? "Default nil"
//print(res)
//
////contactMap ---> removes the nil values
//var arr = [1,nil,2,nil,3]
//print(arr.compactMap{$0})
//
//
////type checking
//var age : Int = 22
//if age is Int{
//    print("age is Int")
//}
//else{
//    print("no age is not int")
//}
//


//-----------------------------------------------------
//for i in 1...10{
//    print(i)
//    for i in stride(from: 2, to: 10, by: 2)
//    {
//        print(i)
//    }
//}

//var num = 123
////while num > 0{
////    print(num)
////    num -= 1
////}
//var sum : Int = 0
//repeat {
//    sum =  String(num).compactMap({$0.wholeNumberValue}).reduce(0 ,+)
//    num = num / 10
//}
//while (num > 0)
//print(sum)

//var arr = [1,2,4,5,8,9]
//for i  in 0..<arr.count{
//    if i == 8{
//        print(arr[i])
//        break
//    }
//}

//for i in 1...10{
//    if i % 2 == 0{
//        continue
//    }
//    print(i)
//}

//var num = 0
//if num > 0{
//    print("number is positive")
//}
//else if(num < 0){
//    print("number is neagtive")
//}
//else{
//    print("zero")
//}

//var num = 18
//
//if (num >= 0 && num <= 10){
//    print("the number is between 0 to 10")
//}
//else if (num >= 11 && num <= 20)
//{
//    print("the number is between 11 to 20")
//}

//func isAdult(age:Int?)
//{
//    guard (age! <= 18 && age! == nil) else{
//        print("not adult")
//        return
//    }
//    print("not adult")
//}
//isAdult(age: 22)
//var sum = 0
//for i in 1...50{
//    if i % 2 == 0{
//        sum += i
//    }
//    
//}
//print(sum)

//var input : String = "sunday"
//switch(input)
//{
//case "monday":
//    print("its monday")
//case "tuesday":
//    print("its tuesday")
//case "wednesday":
//    print("its wednesday")
//case "thursday":
//    print("thursday")
//case "friday":
//    print("its friday")
//case "saturday":
//    print("weekday")
//case "sunday":
//    print("weekend")
//default:
//    print("invalid option...")
//}

let studentScores = ["Alice": 85, "Bob": 92, "Charlie": 76, "David": 88]

for (key,values) in studentScores{
    print("\(key):\(values)")
}

//var num = 5
//switch(num)
//{
//case ..<0:
//    print("Negative")
//case 0...10:
//    print("Small")
//case 11...100:
//    print("Medium")
//case 101...:
//    print("Large")
//default:
//    print("Invalid option...")
//}

//var input = 100
//switch(input)
//{
//case let x where x > 100:
//    print("larger")
//case let x where x >= 0 && x <= 100:
//    print("medium")
//case let x where x<0:
//    print("small")
//default:
//    print("Invalid Case")
//}

//combining the cases:
//var num = 1
//switch(num)
//{
//case 1,2,3,4,5:
//    print("First in distinction...")
//    fallthrough
//case 6:
//    print("second in distinction...")
//    fallthrough
//default:
//    print("invalid ")
//}

//1 function
//func add(){
//    
//}
////2 method
//func sub(){
//    
//}
//4
//func add(a : Int,b:Int)->Int
//{
//    return (a + b)
//}
////5 calling a function
//let res = add(a: 5, b: 5)
//print(res)
//
////7
//func sub(num1 a:Int,num2 b:Int)
//{
//    print(a + b)
//}
//sub(num1: 3, num2: 1)

//8
func def(name a:String = "pranay"){
    print(a)
}
def()

//9
//func mutlipleReturns(a:Int,b:Int,radius : Int)->(Int,Double){
//    let area = a * b
//    let rad = 3.14 * Double(radius)
//    return (area,rad)
//}
//let res = mutlipleReturns(a: 5, b: 5, radius: 2)
//print(res)

//12
//var a = 10
//var b = 20
//func change(x: inout Int,y: inout Int){
//    print(x)
//    print(y)
//}
//change(x: &a, y: &b)

//var myvalue = 10
//func dubleValue(_ value:Int)->Int{
//    var value = value
//    value = value + value
//    return value
//}
//print("before : \(myvalue)")
//print("after : \(Double(myvalue))")
//print("after function call :\(myvalue)")

//var myvalue = 10
//func dubleValue(_ value: inout Int)->Int{
//    value = value + value
//    return value
//}
//print("before : \(myvalue)")
//print("after : \(dubleValue(&myvalue))")
//print("after function call :\(myvalue)")


//let str = "hello world"
//let sb = str.index(str.startIndex, offsetBy: 4)
//let character = str[sb]
//print(character)

//var str = {
//    print("hello world...")
//}
//str()

//clouser parameters
//var greet = {(name:String) in
//    print("hey hi...\(name)")
//}
//greet("pranay")


//clousers that return value
//var square = { (num:Int) ->Int in
//    let res = num * num
//    return res
//}
//let res2 = square(4)
//print(res2)
//


//func grabLnch(sreach : ()->()){
//    sreach()
//}
//grabLnch {
//    print("Hi")
//}

//trailing clouser
//func grabClouser(message : String,sreach:()->()){
//    sreach()
//}
//grabClouser(message: "HI", sreach: {
//    print("hello")
//})
//
//func display(greet : @autoclosure ()->())
//{
//    greet()
//}
//display(greet: print("hi"))
//
//func str(_ name : String...)
//{
//    print(name)
//}
//str("pranay","kumar")

//closure with return type
//let addNumbers = { (a:Int,b:Int) ->Int in
//    return a + b
//}
//print(addNumbers(5, 6))
//
//func performOperation(operation : (Int,Int) -> Int)
//{
//    let result = operation(4, 5)
//    print( result)
//}
////performOperation(operation: {a,b in
////    return a * b
////})
////
////var muiltiplier = 5
//////cpaturing values
////var mul = { (value : Int) -> Int in
////    return value * muiltiplier
////}
////mul(4)
//
//
////var arr = [1,2,3,4,5]
////func square(num : [Int],operation : (Int)->Void){
////    for number in num{
////        operation(number)
////    }
////}
////square(num: arr, operation: { number in
////    print(number * number)
////})
//
//
////var arr = [1,2,3,4,5]
////let res = arr.filter({$0 % 2 == 0})
////print(res)
//
////func check(num:Int,condition:(Int)->Void)
////{
////    condition(num)
////}
////check(num: 5, condition: {number in
////    if number % 3 == 0{
////        print("divisible")
////    }
////    else{
////        print("no")
////    }
////})
////
////let arr = [1,2,3]
////print(arr.reduce(0){$0 + $1})
//
////class Book{
////    var title : String
////    var author : String
////    init(title: String, author: String) {
////        self.title = title
////        self.author = author
////    }
////}
////class Libaray {
////    var books : [Book] = []
////    
////    func addBook(book : Book)
////    {
////        books.append(book)
////    }
////}
////var book1 = Book(title: "adventure", author: "Alice")
////let lib = Libaray()
////lib.addBook(book: book1)
////print(lib.books)
//
//
////class Account{
////    private var accountNumber : Int = 0
////    private var balance : Double = 0.0{
////        willSet{
////            print("balance change \(balance) to \(newValue)")
////        }
////        didSet{
////            print("balance is initially \(oldValue)")
////        }
////    }
////    
////    func deposit(amount: Double){
////        balance += amount
////        print("Balance is : \(balance)")
////    }
////    func withdraw(amount: Double){
////        balance -= amount
////        print("Balance is withdrawn and avaliable balance is :\(balance)")
////    }
////    
////    //getter
////    func getBalance() -> Double {
////        return balance
////    }
////    //setter
////    func setBalance(amount :Double)
////    {
////        balance += (amount)
////    }
////}
////class SavingsAccount : Account{
////    
////    var interestRate:Double = 0.05
////    
////    func applyInterset(){
////        let inter = getBalance() * interestRate
////        print(inter)
////    }
////    
////    func setIntersetRate(amount:Double)
////    {
////        interestRate += amount
////    }
////}
////
////var sa = SavingsAccount()
////sa.deposit(amount: 1000.00)
////sa.getBalance()
////sa.interestRate = 4.5
////sa.applyInterset()
////sa.setIntersetRate(amount: 7.5)
////sa.applyInterset()
//
////enum error:Error{
////    case severError,IncorrectError,InvalidAmount
////}
////class bankAccount{
////    
////    func withdraw(amount: Int) {
////        if balance <= 100 {
////            print("You are not able to withdraw the money.Due to the terms")
////        }else{
////            balance -= amount
////        }
////        
////    }
////    func deposit(amount: Int)throws {
////        if amount <= 0{
////            balance += amount
////        }
////        else{
////            throw error.InvalidAmount
////        }
////        
////    }
////    
////    var accountHolderName :String = ""
////    private var accountNumber:Int = 0
////    var balance:Int = 0
////    
////    func getBalance(){
////        print(balance)
////    }
////    
////    func setAccount(accountNumber:Int)
////    {
////        self.accountNumber = accountNumber
////    }
////}
////
////class SavingAccount : bankAccount{
////    func details(){
////       print(" balance : \(getBalance()) and name : \(accountHolderName)")
////    }
////}
////let sa = SavingAccount()
////
////sa.accountHolderName = "pranay"
////sa.setAccount(accountNumber: 123456)
////try! sa.deposit(amount: 12)
////print(sa.getBalance())
//
// //adding two arrays
////var a1 = [1,2,3]
////var a2 = [4,5,6]
////print(a1 + a2)
//
////count
////var arr = [1,2,3,4,5,6,7]
////print(arr.count)
////if arr.isEmpty{
////    print("is empty")
////}else{
////    print("Not Empty...")
////}
//
////accessing array item
////var arr = ["a","b","c","d","e","f","g","h","i"]
////print(arr[2])
////
//////rreplacing the array
////arr[2] = "C"
////print(arr[2])
////
//////random
////print(arr.randomElement()!)
////
//////shuffled
////print(arr.shuffled())
////
////var a1 = [2,4,5]
////var a2 = [6,7,8]
////print(a1.append(contentsOf: a2))
////print(a1)
//
////inserting
////var arr = [1,2,3,4]
////arr.insert(5, at: 4)
////print(arr)
////
////arr.remove(at: 2)
////print(arr)
////
////arr.removeLast()
////print(arr)
//
//
////array iterration
////let array = [1,2,3,4,5,6,7,8]
////for i in array{
////    print(i)
////}
//
//// mixed array
////var arr :[Any] = ["1",1,"hi"]
////for i in arr{
////    print(i)
////}
//
////dictonaries
////var book = [1:"one",
////            2:"two",
////            3:"three",
////]
////print(book.count)
////
//////acessing and updating
////print("Initial :\(book)")
//////updating
//////book[1] = "four"
////book[4] = "four"
////print("After:\(book)")
////print(book.removeValue(forKey: 2))
////print(book)
////
////for (key,value) in book{
////    print("\(key):\(value)")
////}
//
////enum networkError : Error{
////    case badURL,noData,serverError
////}
////
////func fetchData(url:String)throws{
////    guard (url.starts(with: "http")) else{
////        throw networkError.badURL
////    }
////    print("Good URL...")
////}
//////do{
//////    try fetchData(url: "gph")
//////}catch  networkError.badURL{
//////    print("error occured..")
//////}
////
//////func processData() throws {
//////    try fetchData(url: "http")
//////}
//////do{
//////    try processData()
//////}
//////catch{
//////    print("Error Ocuured...")
//////}
//////let data = try? fetchData(url: "invalid")
//////if let url = data{
//////    print("data sucessfully fetched...")
//////}
//////else{
//////    print("Error...")
//////}
////
////class BankAccount{
////    
////    private var accountHolderName : String = ""
////    private var balance:Int = 0{
////        willSet{
////            print("balance \(balance) is changed to \(newValue)")
////        }
////        didSet{
////            print("balance is \(oldValue)")
////        }
////    }
////    
////    func setAccountHolderName(accountHolderName : String)
////    {
////        self.accountHolderName = accountHolderName
////    }
////    func getAccountHolderName(){
////        print("name : \(accountHolderName)")
////    }
////    
////    func getBalance(){
////        print("Balance :\(balance)")
////    }
////    
////    func deposit(amount:Int){
////        if amount >= 0 {
////            balance += amount
////        }
////        else{
////            print("Error : you cannot deposit the amount....")
////        }
////    }
////        func withdraw(amount:Int)
////        {
////            if balance >= 0{
////                balance -= amount
////            }
////            else{
////                print("Insufficoent funds...")
////            }
////        }
////}
////
////class SavingsAccount : BankAccount
////{
////    var interestRate:Int = 0
////    func setIntersetRate(interestRate:Int)
////    {
////        self.interestRate = interestRate
////    }
////    func display(){
////        print("\(getAccountHolderName())")
////    }
////}
////let saving = SavingsAccount()
////saving.setAccountHolderName(accountHolderName: "pranay")
////saving.getAccountHolderName()
////saving.deposit(amount: 1000)
////saving.getBalance()
//
//class bank{
//    var accountBalance : Int
//    init(accountBalance: Int) {
//        self.accountBalance = accountBalance
//    }
//    
//    //    var balance :Int {
//    //        get{
//    //            return balance
//    //        }
//    //        set(newValue)
//    //        {
//    //            if newValue >= 0{
//    //                balance += newValue
//    //            }
//    //            else{
//    //                print("Invalid balance")
//    //            }
//    //        }
//    //    }
//    func getbalance(){
//        print(accountBalance)
//    }
//}
//class a:bank{
//    var Bank : bank
//    func display(){
//        let balance = Bank.getbalance()
//    }
//}

//func fibo(num:Int)->[Int]{
//   var arr :[Int] = []
//    var a = 0
//    var b = 1
//    for _ in 1...num{
//        arr.append(a)
//        let sum = a + b
//        print(sum)
//        a = b
//        b = sum
//        
//    }
//    return arr
//}
//let res = fibo(num: 10)
//print(res)

var str = "helloworld"
//let frequency = NSCountedSet(array: Array(str))
//
//for char in frequency{
//    let count = frequency.count(for: char)
//    print("\(char) : \(count)")
//}

//var frequency = [Character : Int] ()
//
//for char in str{
//    frequency[char, default: 0 ] += 1
//}
//for (char,count) in frequency{
//    print("\(char):\(count)")
//}

//func fibo(num:Int)->Int{
//    if num == 0{
//        return 0
//    }
//    else if(num == 1)
//    {
//        return 1
//    }
//    else{
//        return fibo(num: num - 1) + fibo(num: num - 2)
//    }
//}
//var num = 10
//for i in 0..<num{
//    print(fibo(num: i))
//}
//
//class bank{
//    lazy var balance : Int = {
//        print("balance")
//        return 10000
//    }()
//}
//var b = bank()
//b.balance
//print(b.balance)
//

//func swap<T>(_ a:inout T,_ b:inout T)
//{
//    let temp = a
//    a = b
//    b = temp
//    print(a)
//    print(b)
//}
//var a = 5
//var b = 6
//print(swap(&a, &b))
//
//struct inStack<Element>{
//    var items :[Element]=[]
//    mutating func push(_ item : Element){
//        items.append(item)
//    }
//}
//var s = inStack<Int>()
//s.push(1)
//s.push(2)
//s.push(3)

//
//
//func insertion(_ arr:inout [Int]){
//    for i in 1..<arr.count{
//        let key = arr[i]
//        var j = i - 1
//        
//        while j >= 0 && arr[j] > key{
//            arr[j + 1] = arr[j]
//            j = j - 1
//        }
//        arr[j + 1] = key
//        
//    }
//}
//var arr = [1,2,3,4,7,9,10,89,43]
////var arr : [Int] = []
////if let input = readLine(){
////    arr = input.split(separator: " ").compactMap{Int($0)}
////}
//insertion(&arr)


protocol shape{
    func area()->Double
}
class Rectangle:shape{
    var r = 7.0
    func area()->Double{
        
        return .pi * r * r
    }
}
var r = Rectangle()
r.area()

enum direction{
    case north(String)
    case south(String)
    case east(String)
    case west
}
let result = direction.north("Moves towards North direction...")
print(result)

enum MyError: Error {
    case badInput
}

func checkInput(input: String) throws {
    if input.isEmpty {
        throw MyError.badInput
    }
}
do {
    try checkInput(input: "")
}
catch MyError.badInput{
    print("bad input")
}
