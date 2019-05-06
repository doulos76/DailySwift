import UIKit

//: # Optional Types
let number: Int
//number

let optionalNumber: Int? = nil
optionalNumber

//: ## Optional Types

let optionalString: String? = nil

let a: Int? = nil
let b = a

//: ## Unwrapping

var num: Int? = nil
print(num)

num = 123
print(num)
print(num!)

num = nil
print(num)
//print(num!)

if num != nil {
  print(num!)
}

num = 123
let before = num
let after = num!
