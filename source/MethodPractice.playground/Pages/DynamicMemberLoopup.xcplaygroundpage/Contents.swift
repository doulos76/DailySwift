//: [Previous](@previous)

import Foundation

//: # Dynamic Member Lookup

//      @dynamicMemberLookup

@dynamicMemberLookup
struct Person {
  var name: String
  var address: String
  
  subscript(dynamicMember member: String) -> String {
    switch member {
    case "nameKey":
      return name
    case "addressKey":
      return address
    default:
      return "n/a"
    }
  }
  
}

let p = Person(name: "James", address: "Seoul")
p.name
p.address

p[dynamicMember: "nameKey"]
p[dynamicMember: "addressKey"]

p.nameKey
p.addressKey

p.missingKey

//: [Next](@next)
