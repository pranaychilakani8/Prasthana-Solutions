import UIKit

var greeting = "Hello, playground"
class person{
    var firstName : String
    var lastName : String
    var age : Int
    
    var fullName :String{
        get{
            return "\(firstName)\t\(lastName)"
        }
        set(newValue)
        {
            age = Int(newValue)!
        }
    }
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    func details(){
        print("\(firstName)\n\(lastName)\n\(age)\n\(fullName)")
    }
}

let p = person(firstName: "pranay", lastName: "kumar" ,age: 22)
print(p.fullName)
p.age=23
print(p.details())

//read only
class rectangle{
    var width : Int
    var height : Int
    
    var area : Int{
        get {
            return width * height
        }
    }
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}
let r = rectangle(width: 10, height: 20)
print(r.area)

// custom setters with different parameter
struct Temperature{
    var celsius : Double = 0.0
    
    var fahrenheitValue : Double{
        get {
            return (celsius * 9/5) + 32
        }
        set(fahrenheitValue)
        {
            celsius = (fahrenheitValue - 32) * 5/9
        }
    }
}
var t = Temperature()
t.celsius=39.0
print(t.fahrenheitValue)
