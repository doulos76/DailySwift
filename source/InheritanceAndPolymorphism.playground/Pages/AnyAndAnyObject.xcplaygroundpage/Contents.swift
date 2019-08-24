//: [Previous](@previous)

import Foundation

//: # Any and AnyObject

var data: Any = 1
data = 2.3
data = "str"
data = [1, 2, 3]
data = NSString()


var obj: AnyObject = NSString()
//obj = 1

if let str = data as? String {
  print(str.count)
} else if let list = data as? [Int] {
  
}

//: # Type Casgint Pattern

switch data {
case let str as String:
  print(str.count)
case let list as [Int]:
  print(list.count)
case is Double:
  print("Double Value")
default:
  break
}


//: [Next](@next)
