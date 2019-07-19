import UIKit

//: # Closures
//: __Closures__ are self-contained blocks of functionality that can be passed around and used in your code. Closures. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages.

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backword(_ s1: String, _ s2: String) -> Bool {
  return s1 > s2
}

var reversedNames = names.sorted(by: backword)

//: ## Closure Expression Syntax

reversedNames = names.sorted(by: {(s1: String, s2: String) -> Bool in
  return s1 > s2
})

//: ## Inferring Type From Context

reversedNames = names.sorted(by: {s1, s2 -> Bool in return s1 > s2 })

//: ## Implicit Returns from Single-Expression Closures

reversedNames = names.sorted(by: {s1, s2 in return s1 > s2 })

//: ## Shorthand Argument Names

reversedNames = names.sorted(by: { $0 > $1 })

//: ## Operator Methods

reversedNames = names.sorted(by: >)

//: ## Trailing Closures

reversedNames = names.sorted() { $0 > $1 }
print(reversedNames)
