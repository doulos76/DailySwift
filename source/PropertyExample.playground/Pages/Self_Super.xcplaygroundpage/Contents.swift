//: [Previous](@previous)

import Foundation

//: # self

//:       self
//:       self.propertyName
//:       self.method()
//:       self[index]
//:       self.init(parameters)

struct Size {
  var width = 0.0
  var height = 0.0
  
  mutating func reset(value: Double) {
//    width = value
//    height = value
    self = Size(width: value, height: value)
  }
  
//  func calcArea() -> Double {
//    return width * height
//  }
//
//  var area: Double {
//    return calcArea()
//  }
//
//  func update(width: Double, height: Double) {
//    self.width = width
//    self.height = height
//  }
//
//  func doSomething() {
//    let c = { self.width * self.height }
//    print(c)
//  }
//
//  static let unit = ""
//  static func doSomething() {
////    self.width
//    self.unit
//  }
  
}

//: # Super

//:       super.propertyName
//:       super.method()
//:       super[index]
//:       super.init(parameters)

//: [Next](@next)
