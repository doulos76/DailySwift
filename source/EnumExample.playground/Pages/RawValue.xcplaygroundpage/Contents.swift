//: [Previous](@previous)

import Foundation

//: # Raw Value

//: Syntax
//:       enum TypeName: RawValueType {
//:         case caseName1 = Value
//:       }


enum Alignment: Int {
  case left
  case right = 100
  case center
}

Alignment.left.rawValue
Alignment.right.rawValue
Alignment.center.rawValue

//Alignment.left.rawValue = 10

Alignment(rawValue: 0)
Alignment(rawValue: 200)
Alignment(rawValue: 100)

enum Weekday: String {
  case sunday
  case monday
  case tuesday
  case wednesday
  case thursday
  case friday
  case saterday
}

Weekday.friday.rawValue

enum ControlChar: Character {
  case tab = "\t"
  case newLine = "\n"
}

//: [Next](@next)
