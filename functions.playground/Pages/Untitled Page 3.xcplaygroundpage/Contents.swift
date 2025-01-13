//: [Previous](@previous)

import Foundation
class Bike{
    
    //stored property ---> it does not store any values
    var name :String
    var gear : Int
    var mileage : Int
    //initializer
    init(name: String, gear: Int,mileage : Int) {
        self.name = name
        self.gear = gear
        self.mileage = mileage
    }
    
    static func show(){
        print("mileage of my bike is in good comdition")
    }
    
    //computed property
    func getMileage()->Int{
        return mileage * 2
    }
    
    //method --> Instance method
    func ride()
    {
        print("I can ride a Bike....🚴")
    }
    
    //type method
    class func Rider(){
        print("I can ride any bike...")
    }
}

//creation of objects
let bike = Bike(name: "Triumph", gear: 6,mileage: 30)
//bike.gear=5
//bike.name="kawasaki"
print(bike.name)
print(bike.gear)
print(Bike.Rider())
print(Bike.show())
print(bike.getMileage())
print(bike.ride())


class marks{
    var physics = 0
    
    func checkEligiblity(physics : Int){
        if(self.physics < physics)
        {
            print("Not eligible for exam...")
        }
        else{
            print("Eligiblie for exam...")
        }
    }
    
}
let Marks = marks()
Marks.physics = 60
Marks.checkEligiblity(physics: 80)


struct employee{
    var salary = 0
    
    mutating func salaryIncrement(increase : Int)
    {
        salary = salary + increase
        print("Increased Salary is :" , salary)
    }
    
}
var Employee = employee()
Employee.salary=50000
print(Employee.salaryIncrement(increase: 30000))



protocol msgBuilder{
    var name : String {get}
    
    func read()->String
}

class ex : msgBuilder{
    
    var name: String="pranay"
    
    init(name: String) {
        self.name = name
    }
    
    func read() -> String {
        return "Hi, hello how are you doing...."
    }
    
}

let e = ex(name: "pranay kumar")
e.read()
print(e.read())

class bank{
    var accountNumber : Int
    var accountBalance : Int
    
    var amount:Int
    {
        get{
            return accountBalance
        }
        set(amount){
            accountBalance = amount + accountBalance
        }
        
    }
    init(accountNumber: Int, accountBalance: Int) {
        self.accountNumber = accountNumber
        self.accountBalance = accountBalance
    }
}
let b = bank(accountNumber: 2345678, accountBalance: 1000)
print(b.accountBalance)
b.amount = 2000
print(b.accountBalance)

