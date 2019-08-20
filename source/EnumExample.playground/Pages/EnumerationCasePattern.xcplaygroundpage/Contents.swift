//: [Previous](@previous)

import Foundation

enum Transportation {
  case bus(number: Int)
  case taxi(company: String, number: String)
  case subway(lineNumber: Int, express: Bool)
}

var tpt = Transportation.bus(number: 7)

switch tpt {
case .bus(let n):
  print(n)
case .taxi(let c, var n):
  print(c, n)
case let .subway(l, e):
  print(l, e)
}

tpt = Transportation.subway(lineNumber: 2, express: false)

if case let .subway(2, express) = tpt {
  if express {
    
  } else {
    
  }
}

if case .subway(_, true) = tpt {
  print("express")
}

let list = [
  Transportation.subway(lineNumber: 2, express: false),
  Transportation.bus(number: 4412),
  Transportation.subway(lineNumber: 7, express: true),
  Transportation.taxi(company: "SeoulTaxi", number: "1234")
]

for case let .subway(n, _) in list {
  print("subway \(n)")
}

for caae let .subway(n, true) in list {
  print("subway \(n)")
}

for case let .subway(n, true) in list where n == 2 {
  print("subway \(n)")
}


//: [Next](@next)
