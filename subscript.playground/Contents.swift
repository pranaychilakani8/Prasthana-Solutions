import UIKit

var greeting = "Hello, playground"

class weeks{
    var str : [String] = ["sunday","monday","tuesday","wednesday","thursday","friday","saturday"]
    subscript(element : Int) -> String{
        get{
            return str[element]
        }
        set(newValue)
        {
            str[element] = newValue
        }
    }
}

let day = weeks()

//print(day.str[3])
print(day[4])
day[5] = "Friday"
print(day[5])

enum planet : Int{
    case mercury = 1,venus,earth,mars,jupiter,saturn,uranus,neptune
    
    static subscript(n : Int)->planet{
        return planet(rawValue: <#T##Int#>)!
    }
}
print(planet(rawValue: 3)!)





