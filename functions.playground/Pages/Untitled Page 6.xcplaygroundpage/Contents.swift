//: [Previous](@previous)

import Foundation

// Dictionary


//without type antation
var bookDict = ["100-432112" : "wind in the willows",
                "200-532874" : "Tale of two cities..",
                "202-546349" : "Sense and sensbility",
                "104-109834" : "shutter Island" ]

print(bookDict)

//with type antation

var bookDict1 :[String : String] = ["100-432112" : "wind in the willows",
                "200-532874" : "Tale of two cities..",
                "202-546349" : "Sense and sensbility",
                "104-109834" : "shutter Island" ]
print(bookDict1)

let keys = ["10000","200000","30000","400000","50000"]
let values = ["wind in the willows","tale of two cities","sense and sensitivity"]

let bookDict2 = Dictionary(uniqueKeysWithValues: zip(1...,values))
print(bookDict)



