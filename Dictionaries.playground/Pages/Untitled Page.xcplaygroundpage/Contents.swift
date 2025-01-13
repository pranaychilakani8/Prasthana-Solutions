import UIKit

var greeting = "Hello, playground"


//creating a dictionary

var capitalCity = ["nepal ":"kathmandu","Italy":"Rome","England":"London"]

print(capitalCity)


// dictionary with keys and values of different data types
var numbers = [1:"One",2:"Two",3:"Three"]
print(numbers)

//adding new elements to dictionary
//var capitalCity = ["nepal ":"kathmandu","Italy":"Rome","England":"London"]
capitalCity["Japan"] = "Tokoyo"
print(capitalCity)
print(capitalCity["Japan"])


//Change Value of Dictionary

var student = [1:"apple",2:"banana",3:"Mango"]
student[2] = "Grapes"
print(student)

//Access Keys Only

var keysOnly = Array(student.keys)
print(keysOnly)

var valuesOnly = Array(student.values)
print(valuesOnly)

//Remove an Element from a Dictionary
var num = [1:"one",2:"Two",3:"Three"]
num.removeValue(forKey: 1)
num.shuffled()
num.randomElement()
num.count
print(num.count)

//Iterate Over a Dictionary

var dic = [1:"1",
           2:"2",
           3:"3",
           4:"4",
]

for(keys,values) in dic{
    print("\(keys),\(values)")
}


var arr = [100,90,10,20,10,10,20,30,40,50]

let array = arr.sorted(by:{ $0 < $1})
    print(array)

    
var res = Array(Set(arr)).sorted()
print(res)

let index = arr.firstIndex(of: 10)
print(index!)
