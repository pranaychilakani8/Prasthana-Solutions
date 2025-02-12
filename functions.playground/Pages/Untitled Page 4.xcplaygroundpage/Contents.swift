//: [Previous](@previous)

import Foundation

class bankAccount{
    var accountBalance : Int
    var accountNumber : Int
    
    init(accountBalance: Int, accountNumber: Int) {
        self.accountBalance = accountBalance
        self.accountNumber = accountNumber
    }
    
    func displayBalance(){
        print("account number \(accountNumber)")
        print("account balance \(accountBalance)")
    }
}

class savingAccount : bankAccount{
    var interest:Int = 9
    
    override func displayBalance() {
        super.displayBalance()
        print("This is the final step...")
    }

    func calInt()->Int{
        super.displayBalance()
        return (interest * accountBalance)
    }
    
}

var sa = savingAccount(accountBalance: 1000, accountNumber: 1234567678)
print(sa.displayBalance())

extension savingAccount{
    func addLunchTimings (){
        print("Timings is about 12:30 to 5:00pm....")
    }
}

print(sa.addLunchTimings())
