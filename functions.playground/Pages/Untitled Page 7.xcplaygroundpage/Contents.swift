//: [Previous](@previous)

import Foundation

//// syntax
////{
////    print("hello world....")
////}
//
//var greet = {
//    print("hello world...")
//}
//greet()
//
//
////clousers with parameter
//let greetUser = { (name : String) in
//    print("name : \(name)")
//}
//greetUser("pranay")
//
//
////clousers with return type
//let great = { (name:String,age:Int) -> (String,String) in
//    return (name , "\(age),Hi")
//    
//}
//let res = great("pranay",22)
//print(res)
//
////clouser as function parameter
//func grabLunch(name:String,sreach :()->()){
//    //call the clouser
//    sreach()
//}
//
//grabLunch(name: "pranay", sreach: {
//    print("Hi, we are having dinner today")
//})
//
////Trailing clouser
////func grab(message:String,sreach:() -> ())
////{
////    print(message)
////    sreach()
////}
////grab(message: "Hi ,Hello", sreach: {
////    print("How are you...")
////})
//
////Autoclousers
//func grab(message:String, sreach:@autoclosure () -> ())
//{
//    print(message)
//    sreach()
//}
//grab(message: "Hi ,Hello",sreach :print("How are you..."))
//
///// this is about clousers
//
//let msg = "Hi Heyyyy how are you???"
//print(msg,separator: "*")
//
//
//var num:Int = 2
//switch(num)
//{
//case 0...10:
//    print("1")
//case 11:
//    print("2")
//case 12:
//    print("3")
//default:
//    print("No matching values...")
//}
//
//
////short hand
//var msgs : (String,String) -> String = {
//    $0 + $1
//}
//let resul = msgs("hello ","Hey")
//print(resul)
//
//
////varadic parameter
//func displayStrings(_ strings:String...){
//    for i in strings{
//        print(i)
//    }
//}
//let msgss = displayStrings("Hi","hello","Hoo")
//print(msgss)
//
////parameters as varaiables
//
////func cal(length:Int,width:Int)->Int{
////    var length = length
////    var width = width
////    
////    length = length * 2
////    width = width * 2
////    return length * width
////}
////let result = cal(length: 20, width: 10)
////print(result)
//
//
//
//var myvalue = 10
//func doubleValue(_ value: inout Int)->Int{
//    //var value = value //shadow copy
//    value += value
//    return value
//    
//}
//
//print(myvalue)
//print(doubleValue(&myvalue))
//print(myvalue)
//
//
//

//class car{
//    var speed : Int
//    var mileage : Int
//    
//    //initializer
//    init(speed: Int, mileage: Int) {
//        self.speed = speed
//        self.mileage = mileage
//    }
//    
//    //deinit
//    deinit {
//        print(mileage,speed)
//    }
//    
//    func showSpeed(){
//        print("Speed of the car is : \(speed)")
//    }
//    
//}
//
////creating instance and accessing the instance
//var c : car? = car(speed: 300, mileage: 30)
//print(c!.mileage)
//print(c!.speed)
//
//c = nil
//print(c?.mileage)
//


let connectionOk = true
let connectionSpeed = 30
let fileFound = false

enum fileTrasnferError : Error
{
    case noConnection
    case lowBandWidth
    case fileNotFound
}

func fileTransfer() throws {
    guard connectionOk else{
        throw fileTrasnferError.noConnection
    }
    
    guard connectionSpeed >= 30 else{
        throw fileTrasnferError.lowBandWidth
    }
    
    guard fileFound else{
        throw fileTrasnferError.fileNotFound
    }
    
    print("file transfer sucessfully...")
}
