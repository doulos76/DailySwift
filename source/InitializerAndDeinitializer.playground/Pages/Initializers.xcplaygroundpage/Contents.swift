import UIKit

//: # Initializer

class Position {
  var x = 0.0
  var y = 0.0
  var z: Double? = nil
  
}

let p = Position()

//: ## Iniitalizser Syntax

//:       init(parameters) {
//:         initialization
//:       }
//:
//:       TypeName(parameters)


class SizeObj {
  var width = 0.0
  var height = 0.0
  
  init(width: Double, height: Double) {
    self.width = width
    self.height = height
  }
  
  convenience init(value: Double) {
    self.init(width: value, height: value)
  }
}

// ## Memberwise Initializer

struct SizeValue {
  var width = 0.0
  var height = 0.0
}

let s = SizeValue()

SizeValue(width: 1.2, height: 3.4)
