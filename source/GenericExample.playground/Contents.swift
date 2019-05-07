import UIKit

struct Box<T> {
  let value: T
}

let oneBox = Box(value: 10)
let twoBox = Box(value: 2)
let stringBox = Box(value: "Hello, World!")

print("Add boxes: \(oneBox.value + twoBox.value)")
print("String inside stringBox: \(stringBox.value)")

struct Customer {
  let orderAmount: Float
}

struct Queue {
  private var customers = [Customer]()
  
  mutating func next() -> Customer {
    return customers.removeFirst()
  }
  
  mutating func lineUp(customer: Customer) {
    customers.append(customer)
  }
}

var inStoreCustomerQueue = Queue()
inStoreCustomerQueue.lineUp(customer: Customer(orderAmount: 10.99))
inStoreCustomerQueue.lineUp(customer: Customer(orderAmount: 25.00))

print(inStoreCustomerQueue.next().orderAmount)
print(inStoreCustomerQueue.next().orderAmount)

struct Car {
  let orderAmount: Float
  let carSize: String
}

struct GenericQueue<T> {
  private var elements = [T]()
  
  mutating func next() -> T {
    return elements.removeFirst()
  }
  
  mutating func lineup(element: T) {
    elements.append(element)
  }
  
  var size: Int {
    get {
      return elements.count
    }
  }
}

var carQueue = GenericQueue<Car>()
carQueue.lineup(element: Car(orderAmount: 15.00, carSize: "small"))
carQueue.lineup(element: Car(orderAmount: 29.00, carSize: "large"))

var customQueue = GenericQueue<Customer>()
customQueue.lineup(element: Customer(orderAmount: 10.99))
customQueue.lineup(element: Customer(orderAmount: 25.00))
customQueue.next()
print(customQueue.size)
customQueue.next()
print(customQueue.size)
