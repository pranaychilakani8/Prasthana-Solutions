import UIKit

var greeting = "Hello, playground"

// Creating an Empty Array
var someInts : [Int] = []
print("someInts is of type [Int] with \(someInts.count) items")

// append
someInts.append(3)
print(someInts.count)

//Creating an Array with a Default Value
var arr1 = Array(repeating: 1, count: 3)



var arr2 = Array(repeating: 2, count: 3)
var addArray = arr1 + arr2
print(addArray)


//Creating an Array with an Array Literal
var shoppingList : [String] = ["Eggs","Bread","Milk","Peanut"]

//Accessing and Modifying an Array

print("Count of the shoppingList is : \(shoppingList.count)")

if shoppingList.isEmpty{
    print("The shopping list is empty")
}
else{
    print("The shopping is not empty")
}

//adding into the array
shoppingList.append("Flour")

//alternative way to append
shoppingList += ["jam"]


// using subscripts syntax ,passing the index value within the square brackets
shoppingList[0] = "Cookies"
print(shoppingList)


shoppingList[1...2] = ["Almonds","Khaju"]
print(shoppingList)

//insert at specific index
shoppingList.insert("Juices", at: 2)
print(shoppingList)

for (index,value) in shoppingList.enumerated(){
    print("Item \(index + 1): \(value)")
}

//Creating and Initializing an Empty Set
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")
//Creating a Set with an Array Literal
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
print(favoriteGenres)
print("I have \(favoriteGenres.count) favorite music genres.")

if favoriteGenres.isEmpty{
    print("As far as music goes, I'm not picky.")
}
else{
    print("I have particular music preferences.")
}

favoriteGenres.insert("Jazz")
if let removedGenre = favoriteGenres.remove("Rock")
{
    print("\(removedGenre)? I'm over it.")
}else{
    print("I never much cared for that.")
}
print(favoriteGenres)

//check if the specific element is present or not
if favoriteGenres.contains("Hop")
{
    print("present...")
}else{
    print("No....")
}

//Iterating over a Set
for genere in favoriteGenres{
    print(genere)
}

//In sorted() way
for genere in favoriteGenres.sorted(){
    print(genere)
}

//Creating an Empty Dictionary
var nameOfIntegers : [Int:String]=[:]
var airports : [String:String] = ["hyd":"rgia","usa":"newyork","uk":"brimgham"]
print(airports)

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary isn't empty.")
}

if let updatedValue = airports.updateValue("NY", forKey: "usa")
{
    print("Updated value for usa is \(updatedValue)")
}
print(airports)

//aceessing only keys
for keys in airports.keys{
    print(keys)
}


//accessing values from Dictionary
for value in airports.values{
    print(value)
}
