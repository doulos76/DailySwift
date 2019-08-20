import UIKit

//: # Sturcture

//:       struct StructureName {
//:         properties
//:         initializer
//:         methods
//:         subscript
//:       }

struct Person {
  var name: String
  var age: Int
  
  func speak() {
    print("Hello")
  }
}

let p = Person(name: "Steve", age: 20)
let name = "Paul"
name

p.name
p.age

p.speak()

//: # Class

//:       class className {
//:         properties
//:         initializer
//:         deinitializer
//:         methods
//:         subscript
//:       }

class Person1 {
  var name = "John Doe"
  var age = 0
  
  func speak() {
    print("Hello")
  }
}


