//: [Previous](@previous)

import Foundation

//: # guard

func validate(id: String?) -> Bool {
  guard let id = id else {
    return false
  }
  
  guard id.count >= 6 else {
    return false
  }
  
//  guard let id = id, id.count >= 6 else {
//    return false
//  }
  
  return true
}

validate(id: nil)
validate(id: "abC")
validate(id: "fasfdasfdas")

//: [Next](@next)
