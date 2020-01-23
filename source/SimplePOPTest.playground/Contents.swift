import UIKit

protocol Runable {
  var velocity: Int { get set }
  func run()
}

extension Runable {
  func run() {
    print("run swift!")
  }
}

class Person: Runable {
  
  var velocity: Int = 3
  
  let name: String?
  let age: Int?
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
}

let person = Person(name: "Lee", age: 23)
person.velocity = 3
person.run()

struct Car: Runable {
  var velocity: Int = 30
  
  let title: String?
  let engine: String?
  
  func run() {
    print("fighting")
  }
}

let car = Car(velocity: 3, title: "Model-3", engine: "Electron")
car.velocity
car.run()
