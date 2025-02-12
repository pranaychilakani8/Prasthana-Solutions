import UIKit
//
//var greeting = "Hello, playground"
//
//
//// 1 by using geneics we can perform any operation with  different data types
//// without generics for every secenario we have to declare the datatype this leads to complexity .
//
//// without generics
//
//func swapTwoValues(num1 a: inout Int,num2 b: inout Int){
//    var temp = a
//    a = b
//    b = temp
//    
//    print(a)
//    print(b)
//}
//var x = 5
//var y = 6
//swapTwoValues(num1:&x, num2:&y)
//
//
//// with using generics ,Now we can pass any type of data .
//func swapTwoWithGenerics<T>(a : inout T,b : inout T)
//{
//    var temp = a
//    a = b
//    b = temp
//    
//    print(a)
//    print(b)
//}
////var a = "hi"
////var b = "hello"
//
//var c = 78.0
//var d = 79.0
//swapTwoWithGenerics(a: &c, b: &d)


//generic type

//without generic  --> it is particulary for Int datatype

//struct InStack<Int>{
//    var arr : [Int] = []
//    //This is for adding
//    mutating func addItems(add items:Int)
//    {
//        arr.append(items)
//    }
//    
//    //For removing last elements
//    mutating func removeLast()
//    {
//        if arr.isEmpty{
//            print("First please add the items into the array....😊")
//        }
//        else{
//            arr.removeLast()
//        }
//    }
//}
//var result = InStack<Int>()
//result.addItems(add: 1)
//result.addItems(add: 2)
//result.addItems(add: 3)
//print(result.arr)
//
////Know i want to remove the items
//result.removeLast()
//print(result.arr)



// with generic


//struct InStack<Gen>{
//    var arr : [Gen] = []
//    //This is for adding
//    mutating func addItems(add items:Gen)
//    {
//        arr.append(items)
//    }
//    
//    //For removing last elements
//    mutating func removeLast()
//    {
//        if arr.isEmpty{
//            print("First please add the items into the array....😊")
//        }
//        else{
//            arr.removeLast()
//        }
//    }
//}
//var result = InStack<Int>()
//result.addItems(add: 1)
//result.addItems(add: 2)
//result.addItems(add: 3)
//print(result.arr)
//
//
//var result1 = InStack<String>()
//result1.addItems(add: "a")
//result1.addItems(add: "b")
//result1.addItems(add: "c")
//print(result1.arr)
//Know i want to remove the items
//result.removeLast()
//print(result.arr)

//extension InStack{
//    var topItem : Gen?
//    {
//        return arr.isEmpty ? nil: arr[arr.count - 1]
//    }
//}
//print(result1.topItem!)


// without generic function
//func findIndex(valueToFind : String,arr:[String])->String{
//    for (index,value) in arr.enumerated(){
//        if valueToFind == value{
//            return "matching string found at String \(index)"
//        }
//    }
//    return "no matching string fund..."
//}
//let arr = ["pranay","kumar","chilakani"]
//print(findIndex(valueToFind: "ch", arr: arr))


//func findIndex<T : Equatable>(valueToFind : T,arr:[T])->String{
//    for (index,value) in arr.enumerated(){
//        if valueToFind == value{
//            return "matching string found at String \(index)"
//        }
//    }
//    return "no matching string fund..."
//}
//let arr = ["pranay","kumar","chilakani"]
//print(findIndex(valueToFind: "kumar", arr: arr))


func equalTo<T : Equatable>(arr : [T] ,valueToEnter : T)->String{
    for (index,value) in arr.enumerated(){
        if value == valueToEnter{
            return "\(index) "
        }
        
    }
    return "no matching value"
}
var arr = [1,2,4,5,6]
print(equalTo(arr: arr, valueToEnter: 5))
