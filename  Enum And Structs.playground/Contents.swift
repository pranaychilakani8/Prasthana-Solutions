import UIKit
//
//var greeting = "Hello, playground"
//
//struct Resolution{
//    var width = 0   // it is known as properities
//    var height = 0
//}
//
//class VideoMode{
//    var resolution = Resolution()
//    var interlaced = false
//    var frameRate = 0.0
//    var name : String?
//}
////instance (object) for Resolution
//var someResolution = Resolution()
//
////instance (object) for VideoMoode
//var someVideoMode = VideoMode()
//
//
////Accessing prperities
//print("the Height is :\(someResolution.height)")
//someResolution.width = 120
//print("the width is :\(someResolution.width)")
//
////with valuetypes
//var hd = Resolution(width: 122,height: 120)
//
//
//var cinema = hd
//
//cinema.width = 2048
//print(hd.width)
//print(cinema.width)
//
//
//
////-----------------------------------------------------------------
//// class is a reference type
//struct person{
//    var name : String
//    var age : Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//  
//}
//
////create a object for person
//var person1 = person(name: "pranay", age: 22)
//print(person1.name)
//print(person1.age)
//
//var person2 = person1
//person2.name = "pranay kumar"
//print(person2.name)
//print(person2.age)

//print(person1.name)


//-------------------------------------

//struct with memeber initailzer
struct Person{
    var name :String
    var age :Int
}
//Now create a struct with member wise initiazlier

var Person1 = Person(name: "pranay", age: 22)

//Function inside a swift Struct
struct car{
    var gear = 0
    
    //method inside struct
    func applyBreak(){
        print("applying Hydralic breaks...")
    }
}

//create an instance
var car1 = car()

car1.gear = 5

car1.applyBreak()
