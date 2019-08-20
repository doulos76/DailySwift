import UIKit

//: # Dictionary
//: Dictionary Literal

//:       [key: value, key: value, ...]
//:       Dictionary<K,V>
//:       [K: V]

var dict = ["A": "Apple", "B": "Banana"]
dict = [:]

let dict1: Dictionary<String, Int>
let dict2: [String: Int]

//: ## Creating a Dictionary

let words = ["A": "Apple", "B": "Banana", "C": "City"]
let emptyDict: [String: String] = [:]
let emptyDict2 = [String: String]()
let emptyDict3 = Dictionary<String, String>()

words.count
words.isEmpty

words["A"]
words["Apple"]

let a = words["E"]
let b = words["E", default: "Empty"]

for k in words.keys.sorted() {
  print(k)
}

for v in words.values {
  print(v)
}

let keys = Array(words.keys.sorted())
let values = Array(words.values)
