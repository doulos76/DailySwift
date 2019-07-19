import UIKit

//: # Capturing Values

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
  var runningTotal = 0
  func incrementer() -> Int {
    runningTotal += amount
    return runningTotal
  }
  return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)

incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forIncrement: 7)

incrementBySeven()
incrementBySeven()
incrementBySeven()

incrementByTen()

//: # Escaping Closures

var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
  completionHandlers.append(completionHandler)
}

func someFunctionWithNoneescapingClosure(closure: () -> Void) {
  closure()
}

class SomeClass {
  var x = 10
  func doSomething() {
    someFunctionWithEscapingClosure { self.x = 100 }
    someFunctionWithNoneescapingClosure { x = 200 }
  }
}

let instance = SomeClass()
instance.doSomething()
print(instance.x)

completionHandlers.first?()
print(instance.x)
