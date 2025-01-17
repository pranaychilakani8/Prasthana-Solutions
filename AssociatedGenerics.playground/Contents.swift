import UIKit

var greeting = "Hello, playground"

//protocol Container{
//    associatedtype Item
//    mutating func append(_ item : Item)
//    var count :Int {get}
//    subscript (i:Int)->Item{get}
//}

//struct InStack : Container{
//    var items : [Int] = []
//    var count: Int{
//        return items.count
//    }
//    typealias Item = Int
//    subscript(i: Int) -> Int {
//        return items[i]
//    }
//    
//    mutating func append(_ item: Int) {
//        items.append(item)
//    }
//    mutating func pop()->Int{
//        return items.removeLast()
//    }
//}
//var res = InStack()
//print(res)

//struct InStack<Element>:Container{
//
//    var arr :[Element] = []
//    var count: Int{
//        return arr.count
//    }
//    
//    subscript(i: Int) -> Element {
//        return arr[i]
//    }
//    
//    
//    mutating func append(_ item: Element) {
//        arr.append(item)
//    }
//    
//}
//var stack = InStack<Any>()
//stack.append("swift")
//stack.append("java")
//stack.append(1)
//print(stack.count)


protocol own{
    associatedtype Element
    mutating func append(item : Element)
}

struct first:own{
    typealias Element =  String
    
    var arr :[String] = []
    
    mutating func append(item: String) {
        arr.append(item)
    }
}
var res = first()
res.append(item: "Hi")
res.append(item: "Hello")
print(res.arr)
