//: [Previous](@previous)

import Foundation

struct Contancts {
  var email: [String: String]
  var optionalEmail: [String: String]?
  var address: String
  
  func printAddress() {
    return print(address)
  }
}

struct Person {
  var name: String
  var contancts: Contancts
  
  init(name: String, email: String) {
    self.name = name
    contancts = Contancts(email: ["home": email], optionalEmail: nil, address: "Seoul")
  }
  
  func getContacts() -> Contancts? {
    return contancts
  }
}

var p = Person(name: "James", email: "swift@example.com")
let a = p.contancts.address

var optionalP: Person? = Person(name: "James", email: "swift@example.com")
let b = optionalP?.contancts.address

optionalP = nil
let c = optionalP?.contancts.address
c

p.contancts.address

optionalP?.contancts.address

p.getContacts()?.address

let d = p.getContacts()?.printAddress()

if let _ = p.getContacts()?.printAddress() {
  
}

var e = p.getContacts()?.email["home"]
e = p.getContacts()?.optionalEmail?["home"]

optionalP?.contancts.address = "Daegu"
optionalP?.contancts.address

optionalP = Person(name: "Paul", email: "swift@example.com")
optionalP?.contancts.address
optionalP?.contancts.address = "Daegu"
optionalP?.contancts.address

// Optional Channing의 결과는 항상 Optional임
// Optional channing에 포함된 표현식 중 하나가 nil을 리턴하면 나머지 표현식을 평가하지 않고 바로 nil을 리턴함

//: [Next](@next)
