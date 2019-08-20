//: [Previous](@previous)

import Foundation

//: # Comparing Dictionaries
let a = ["A": "Apple", "B": "Banana", "C": "City"]
let b = ["A": "Apple", "B": "banana", "C": "City"]

a == b
a != b

//a.elementsEqual(b) { (lhs, rhs) -> Bool in
//  print(lhs.key, rhs.key)
//  return lhs.key.caseInsensitiveCompare(rhs.key) == .orderedSame && lhs.value.caseInsensitiveCompare(rhs.value) == .orderedSame
//}

let aKays = a.keys.sorted()
let bKeys = b.keys.sorted()

aKays.elementsEqual(bKeys) { lhs, rhs -> Bool in
  guard lhs.caseInsensitiveCompare(rhs) == .orderedSame else { return false }
  guard let lv = a[lhs], let rv = b[rhs], lv.caseInsensitiveCompare(rv) == .orderedSame else { return false }
  return true
}

//: ## Finding Elements
var words = ["A": "Apple", "B": "Banana", "C": "City"]
let c: ((String, String)) -> Bool = {
  $0.0 == "B" || $0.1.contains("i")
}

words.contains(where: c)

let r = words.first(where: c)
r?.key
r?.value

words.filter(c)


//: [Next](@next)
