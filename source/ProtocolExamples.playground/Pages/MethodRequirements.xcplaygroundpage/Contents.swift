//: [Previous](@previous)

import Foundation

//: # Method Requirements

//:       protocol ProtocolName {
//:         func name(param) -> ReturnType
//:         static func name(param) -> ReturnType
//:         mutating func name(param) -> ReturnType
//:       }


protocol Resettable {
  static func reset()
}

class Size: Resettable {
  var width = 0.0
  var height = 0.0
  
  func reset() {
    width = 0.0
    height = 0.0
  }
  
  class func reset() {
    
  }
}

//: [Next](@next)
