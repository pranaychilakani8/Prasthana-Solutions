import UIKit

var greeting = "Hello, playground"

//base class or super class
//class MediaItem{
//    var name : String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//
////sub class
//class Moive:MediaItem{
//    var director : String
//    
//    init(name:String,director: String) {
//        self.director = director
//        super.init(name: name)
//    }
//}
//
//class song : MediaItem{
//    var artist : String
//    init(artist: String,name : String) {
//        self.artist = artist
//        super.init(name: name)
//    }
//}
//
//let libaray = [
//    Moive(name: "godsee", director: "satyaDev"),
//    Moive(name: "eveilDeads", director: "julice"),
//    song(artist: "Elvis Presley", name: "Blue Suede Shoes"),
//    song(artist: "Chesney Hawkes", name: "The One And Only")
//]
//
//var moiveCount = 0
//var songCount = 0
//
//
////type checking using is operator (checking the specific type)
// 
//for item in libaray{
//    if item is Moive{
//        moiveCount += 1
//    }
//    else if (item is song){
//        songCount += 1
//    }
//}
//
//print("Media library contains \(moiveCount) movies and \(songCount) songs")
//
////downcasting
//for i in libaray{
//   if  let moive = i as? Moive{
//       print("moive name :\(moive.name),director :\(moive.director)")
//    }
//    else if let song = i as? song{
//        print(song.artist,song.artist)
//    }
//}



class vechile{
    var name : String
    init(name: String) {
        self.name = name
    }
}
class car : vechile{
    func drive(){
        print("we can drive using car...")
    }
}
class bike : vechile{
    func ride(){
        print("we can ride the bike...")
    }
}

let vechiles : [vechile] = [
    car(name: "jaquar"),
    bike(name: "kawasaki"),
    car(name: "toyato crysta")
]


for item in vechiles{
    if let c = vechiles as? car{
        print(c.drive())
    }
    else if let b = vechiles as? bike{
        print(b.ride())
    }
}

var things : [Any] = []
things.append(1)
things.append(2.0)
things.append(true)
things.append("Hello Swift")


for thing in things{
    switch(thing){
    case 0 as Int:
        print("0 is zero...")
   
    case 0 as Double :
    print("0 is double")
    default:
        "exited"
    }
}

