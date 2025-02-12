import UIKit

//var greeting = "Hello, playground"
//
////asynchronous code
////asynchronous allow task to "suspend" or "resume" later
//
//func fetchData() async ->String{
//    await Task.sleep( 2 * 1000000000)
//    return "Data Fetched..."
//}
//Task{
//    let res = await fetchData()
//    print(res)
//}
//
//
//
//func downloadImage() async throws {
//    try await Task.sleep(nanoseconds: 4000000000)
//}
//Task{
//    do{
//        try await downloadImage()
//        print("sucess")
//    }
//    catch{
//        print("Faile to download....")
//    }
//}
//
//
//actor Counter{
//    private var value = 0
//    
//    func increment(){
//        value += 1
//    }
//    func getValue()->Int{
//        return value
//    }
//}
//let count = Counter()
//
//Task{
//    await count.increment()
//    let res = await count.getValue()
//    print(res)
//}

//func fetchUserData() async -> String{
//    await Task.sleep(2 * 1_000_000_000)
//    return "User data received"
//}
//Task{
//    let res = await fetchUserData()
//    print(res)
//}
//RunLoop.main.run()


//func fetchDataFromSourceOne() async -> String{
//    await Task.sleep(1 * 1_000_000_000)
//    return "Data from source one"
//}
//func fetchDataFromSourceTwo() async ->String{
//    await Task.sleep(1 * 1_500_000_000 / 2)
//    return "Data from source two"
//    return "Data from source two"
//}
//Task {
//    async let res1 = await fetchDataFromSourceOne()
//    async let res2 = await fetchDataFromSourceTwo()
//    let r1 = await res1
//    let r2 = await res2
//    print("\(r1)\n\(r2)")
//}
//RunLoop.main.run()

//actor BankAccount{
//    private var balance : Int = 0
//    
//    func depsoit(amount:Int){
//        balance += amount
//    }
//    func getBalance()->Int{
//        return balance
//    }
//}
//let bank = BankAccount()
//Task{
//    await bank.depsoit(amount: 1000)
//    let bal = await bank.getBalance()
//    print(bal)
//}


func ServerA() async ->String{
    await Task.sleep(1 * 1_000_000_000)
    return "from serverA"
}
func ServerB() async ->String{
    await Task.sleep(2 * 1_000_000_000)
    return "from serverB"
}
func ServerC() async ->String{
    await Task.sleep(1 * 1_500_000_000 / 2)
    return "from serverC"
}

Task{
    async let servA = await ServerA()
    async let servB = await ServerB()
    async let servC = await ServerC()
    
    let A = await servA
    let B = await servB
    let C = await servC
    
    print(A)
    print(B)
    print(C)
}

func fetchPrice(forItem item:String) async -> Int{
    switch item{
    case "Item A":
        return 100
    case "Item B":
        return 200
    case "Item C":
        return 150
    default :
        return 0
    }
}
func applyDiscount(toPrice price:Int) async -> Int{
    await Task.sleep(500 * 1_000_000)
    return Int(Double(price) * 0.9)
}

Task {
    async let priceA = fetchPrice(forItem: "Item A") // Fetch price for Item A
    async let priceB = fetchPrice(forItem: "Item B") // Fetch price for Item B
    async let priceC = fetchPrice(forItem: "Item C") // Fetch price for Item C
    
    // Wait for all prices to be fetched
    let fetchedPriceA = await priceA
    let fetchedPriceB = await priceB
    let fetchedPriceC = await priceC
    
    // Apply discounts to each price
    async let discountedPriceA = applyDiscount(toPrice: fetchedPriceA)
    async let discountedPriceB = applyDiscount(toPrice: fetchedPriceB)
    async let discountedPriceC = applyDiscount(toPrice: fetchedPriceC)
    
    // Wait for all discounts to be applied
    let finalPriceA = await discountedPriceA
    let finalPriceB = await discountedPriceB
    let finalPriceC = await discountedPriceC
    
    // Calculate the total cost after discounts
    let totalCost = finalPriceA + finalPriceB + finalPriceC
    print("Total cost after discounts: \(totalCost)") // Expected output: "Total cost after discounts: 405"
}


typealias str = Int
var num : str = 90
print(num)

var name = "9"
var res = Int(name)
print(type(of: res!))
