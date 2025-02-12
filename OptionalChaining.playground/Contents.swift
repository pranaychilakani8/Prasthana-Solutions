import UIKit

var greeting = "Hello, playground"
//
//class person{
//    var residenece : Residence?
//}
//class Residence {
//    var numberOfRooms = 1
//}
//
//let john = person()
////john.residenece!.numberOfRooms
////
////if let room = john.residenece?.numberOfRooms{
////    print("John's residence has \(room) room(s).")
////    } else {
////        print("Unable to retrieve the number of rooms.")
////}
//
//
//john.residenece = Residence()
//john.residenece
//if let roomCount = john.residenece?.numberOfRooms {
//    print("John's residence has \(roomCount) room(s).")
//} else {
//    print("Unable to retrieve the number of rooms.")
//}


//class person{
//    var address : Address?
//}
//class Address{
//    var city : String = "New York"
//}
//var p = person()
//p.address = Address()
//print(p.address!)

// without optional chaining
//if let add = p.address{
//    print(add.city)
//}
//else{
//    print("Address is nil...")
//}

//with optional chaining
//if let city = p.address?.city{
//    print(city)
//}
//else{
//    print("city is nil...")
//}


class Address {
    var city : String?
}
class Person{
    var name : String
    var address : Address?
    init(name: String, address: Address? = nil) {
        self.name = name
        self.address = address
    }
}

let p = Person(name: "pranay", address: nil)
if let city = p.address?.city{
    print(city)
}
else{
    print("city not availble")
}

class car{
    func start(){
        print("car started....")
    }
}
var myCar : car? = car()
myCar?.start()
myCar = nil
myCar?.start()

class company{
    var man : manager?
}
class manager{
    var tl : teamlead?
}
class teamlead{
    var name : String = "Alice"
}
let com = company()
print(com.man?.tl?.name ?? "no name")

com.man = manager()
print(com.man?.tl?.name ?? "no name")

com.man?.tl = teamlead()
print(com.man?.tl?.name ?? "no name")



class Residence {
    var rooms: [Room] = []
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}

class Room {
    let name: String
    init(name: String) { self.name = name }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}
