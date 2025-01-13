import UIKit

var greeting = "Hello, playground"



var name : Any = "Pranay"

if name is String{
    print("Yes")
}
else{
    print("No")
}


class Animal{
    func speak(){
        print("Animal Speaks...")
    }
}

class Dog : Animal{
    func bark(){
        print("Dog barks...")
    }
}


let animal : Animal = Animal()

let dog = animal as! Dog;
print(dog.bark())
