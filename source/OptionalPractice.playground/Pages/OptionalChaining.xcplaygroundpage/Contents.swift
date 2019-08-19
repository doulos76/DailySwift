//: [Previous](@previous)

import Foundation

//: # Optional Chaining

struct Contants {
  var email: [String: String]?
  var address: String?
  
  func printAddress() {
    print(address ?? "no address")
  }
}

struct Person {
  var name: String
  var contancts: Contants?
  
  init(name: String, email: String) {
    self.name = name
    contancts = Contants(email: ["home": email], address: "Seoul")
  }
  
  func getContacts() -> Contants? {
    return contancts
  }
}

var p = Person(name: "James", email: "swift@test.com")
let a = p.contancts?.address

var optionalP: Person? = Person(name: "James", email: "swift@test.com")
let b = optionalP?.contancts?.address

b

optionalP = nil
let c = optionalP?.contancts?.address

p.contancts?.address?.count

p.getContacts()?.address

let d = p.getContacts()?.printAddress()


if p.getContacts()?.printAddress() != nil {
  
}

if let _ = p.getContacts()?.printAddress() {
  
}

let e = p.contancts?.email?["home"]

p.contancts?.email?["home"]?.count

p.contancts?.address = "Daejeon"
p.contancts?.address

optionalP?.contancts?.address = "Incheon"

//: [Next](@next)
