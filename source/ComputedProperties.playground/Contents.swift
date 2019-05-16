import UIKit

class Person {
  var name: String
  var yearOfBirth: Int
  
  init(name: String, year: Int) {
    self.name = name
    self.yearOfBirth = year
  }
  
  var age: Int {
    get {
      let calender = Calendar.current
      let now = Date()
      let year = calender.component(.year, from: now)
      return year - yearOfBirth
    }
    set {
      let calender = Calendar.current
      let now = Date()
      let year = calender.component(.year, from: now)
      yearOfBirth = year - newValue
    }
  }
}

let person1 = Person(name: "Lee, SJ", year: 2002)
person1.age

let person2 = Person(name: "Koo, mh", year: 1976)
person2.age

person2.age = 50
person2.yearOfBirth


struct Size {
  var width: Double
  var height: Double
  
  var area: Double {
    return width * height
  }
}
