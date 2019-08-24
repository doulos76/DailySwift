import UIKit

//: # Inheritance

//:       class Classname: SuperClassName {
//:
//:       }

class Figure {
  var name = "Unknown"
  
  init(name: String) {
    self.name = name
  }
  
  func draw() {
    print("draw \(name)")
  }
}

class Circle: Figure {
  var radius = 0.0
}

let c = Circle(name: "Circle")
c.radius
c.name
c.draw()


//: # final class

//:       final class ClassName: SuperClassName {
//:
//:       }

final class Rectangel: Figure {
  var width = 0.0
  var height =  0.0
}

//class Square: Rectangel {
//
//}
