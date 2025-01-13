//: [Previous](@previous)

class bankAccount{
    
    private var balance : Double
    
    init(balance: Double) {
        self.balance = balance
    }
    //getters to access
    func getBalance()->Double{
        return balance
        
    }
    
    //setter to set the amount
    func setDeposit(amount:Double)
    {
        if amount > 0{
            balance =  amount + balance
        }
        else{
            print("Insufficent Funds....")
        }
    }
    
    //withdraw
    func withdraw(amount:Double)
    {
        if amount > 0 {
            balance = amount - balance
        }
        else{
            print("Insufficient Funds....")
        }
    }
}
let bank = bankAccount(balance: 1000.0)
bank.getBalance()
bank.setDeposit(amount: 1000.0)
bank.getBalance()
bank.withdraw(amount: 500.0)
bank.getBalance()
