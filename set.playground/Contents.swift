import UIKit

var greeting = "Hello, playground"
//create a set elements
// it remove the duplicates
var studentId : Set<Int> = [1,3,2,4,3,2]
print(studentId)

//Adding elements to set
var nums : Set<String> = ["java","python","swift","R"]
nums.insert("JavaScript")
print(nums)

//Removing an element
nums.remove("python")
print(nums)


//iterating over a set
let fruits = ["apple","banana","dragoan fruit","grapes"]
for fruit in fruits{
    print(fruit)
}

//count
print(fruits.count)

//set operations
// 1 union
let setA :Set = [1,2,3,4,5]
let setB :Set = [1,2,3,6,7]
print(setA.union(setB))


//2 intersection
print("Matching elements :",setA.intersection(setB))

//3 Difference using subtracting
print("Difference :",setA.subtracting(setB))

//4 symmetric
print("Symmetric: ",setA.symmetricDifference(setB))


// checking two Sets are eual or not
if setA == setB{
    print("equal")
}
else{
    print("Not equal...")
}


struct one
{
    var a = 10
}
var res = one(a:20)
print(res.a)
