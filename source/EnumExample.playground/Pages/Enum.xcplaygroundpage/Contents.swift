import UIKit

//: # enum

let left = "left"
let center = "center"
let right = "right"

var alignment = center


if alignment == "Center" {
  
}

//: Syntax
//:       enum TypeName {
//:         case caseName1
//:         case caseName2, caseName3
//:       }


enum Alignment {
  case left
  case right
  case center
}

Alignment.center

var textAlignment = Alignment.center

textAlignment = .left

if textAlignment == .center {
  
}

switch textAlignment {
case .left:
  print("left")
case .right:
  print("right")
case .center:
  print("center")
}
