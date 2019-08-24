//: [Previous](@previous)

import Foundation

//: # Type Methods

class Circle {
  static let pi = 3.14
  var radius = 0.0
  
  func getArea() -> Double {
    return radius * radius * Circle.pi
  }
  
  class func printPi() {
    print(pi)
  }
}

Circle.printPi()

class StrokeCircle: Circle {
  override static func printPi() {
    print(pi)
  }
}

//: [Next](@next)
