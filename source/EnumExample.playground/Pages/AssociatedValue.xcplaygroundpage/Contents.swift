//: [Previous](@previous)

import Foundation
import UIKit

//: # AssociatedValue

//:       enum TypeName {
//:         case caseName(Type)
//:         case caseName(Type, Type, ...)
//:       }

enum VideoInterface {
  case dvi(width: Int, height: Int)
  case hdmi(Int, Int, Double, Bool)
  case displayPort(CGSize)
}

var input = VideoInterface.dvi(width: 2048, height: 1536)

switch input {
case .dvi(2048, 1536):
  print("dvi 2048 x 1436")
case .dvi(2048, _):
  print("dvi 2048 x Any")
case .div:
  print("div")
case .hdmi(let width, let height, let version, var audioEnabled):
  print("hdmi \(width)x\(height)")
case .displayPort(size):
  print("dp")
}

input = hdmi(3840, 2160, 2.1, true)

//: [Next](@next)
