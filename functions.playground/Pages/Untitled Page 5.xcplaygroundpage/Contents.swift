//: [Previous](@previous)

import Foundation

// syntax of array is same type

var myArray : [String] = ["Hi,","Hello"]
print(myArray)


//without type anotation

var treeArray = ["pine","oak","yew"]
print(treeArray)

//creating empty array

var pricearray : [Int]=[]
pricearray = [10,20,30]
print(pricearray)

var nameArray = [String] (repeating: "Hello", count: 10)
print(nameArray)

//join the two arrays of same type

let array1 = [10,20,30]
let array2 = [40,50,60]

let array3 = array1 + array2
print(array3)

// 1. count
var arr = ["Swift","Java","Python","C","HTML","CSS","JavScript"]
var count = arr.count
print("count of arr is : \(count)")

// 2. isEmpty -> returns boolean type
if arr.isEmpty{
    print("No values in the array...")
}
else{
    print("It contains some values...")
}


// 3. Accessing array items

print(arr[1])

//we can replace with new value

arr[1] = "Java Programming"
print(arr)

// 4. random() and shuffled()

print(arr.randomElement()!)

print(arr.shuffled())


// append -> this method is used to add the value at the last index

arr.append("R")
print(arr)

//or we can use in diffrerent way
//arr += "Ruby"

//append also used join the two arrays

var a1 = [2,4,6]
var a2 = [1,3,5]
a1.append(contentsOf: a2)
print(a1)


// 5 . insert -> is used to insert the value at partivular index

a1.insert(8, at: 3)
print(a1)

// 6 . remove -> at particular location

a1.remove(at: 2)
print(a1)

// removeLast() removes the last element
a1.removeLast()
print(a1)

//modifying the elemnt

var dialyAcitivites = ["code","repeat","cat"]
dialyAcitivites[2] = "sleep"
print(dialyAcitivites)

// iterating an arrray
for i in dialyAcitivites{
    print(i)
}


//mixed type array

var address : [Any] = [100,"pranay","How are you",20]
print(address)

//for j in address{
//    print(j as! Int * 10)
//}


// Find the Maximum and Minimum in an Array

let numbers = [12, 35, 1, 10, 34, 1]

if let maxNumber = numbers.max(),let minNumber = numbers.min(){
    print("max \(maxNumber)")
    print("min \(minNumber)")
}
else{
    print("Arrays is empty...")
}

//to find the second largest elemment in array

var array = [1,2,3,4,5,6]

//first sort the array
array.sorted()
let secondLargest = array.count - 1
print("second largest of array is : \(secondLargest)")

