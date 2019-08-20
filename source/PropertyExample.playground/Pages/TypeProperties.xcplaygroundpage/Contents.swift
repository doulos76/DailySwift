//: [Previous](@previous)

import Foundation

//: # Type Properties

class Math {
  static let pi = 3.14
}

let m = Math()
Math.pi

enum Weekday: Int {
  case sunday = 1
  case moday
  case tuesday
  case wednesday
  case thursday
  case friday
  case saturday
  
  static var today: Weekday {
    let cal = Calendar.current
    let today = Date()
    let weekday = cal.component(.weekday, from: today)
    return Weekday(rawValue: weekday)!
  }
}

Weekday.today

//: [Next](@next)
