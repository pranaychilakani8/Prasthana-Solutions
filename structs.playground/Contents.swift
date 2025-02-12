import UIKit

var greeting = "Hello, playground"

//structs --> is used to store the variables of different datatypes

struct first{
    var name:String?
    var age : Int?
}
//to use the struct we need to create the instance(object)

var person1 = first(name: "pranay",age: 22)
print(person1.name!)
print(person1.age!)

//another instance or object
var person2 = first()
person2.age = 23
person2.name = "kumar"
print(person2.name!)
print(person2.age!)

struct second{
    var car = "jaquar"
    
    mutating  func carDetails(car:String){
        self.car = car
    }
}
//create an instance
var person3 = second()
print(person3.car)


indirect enum ae{
    case number(Int)
    case addition(ae,ae)
    case mutiplication(ae,ae)
}

let four = ae.number(4)
let five = ae.number(5)
let sum = ae.addition(four, five)
print(sum)
