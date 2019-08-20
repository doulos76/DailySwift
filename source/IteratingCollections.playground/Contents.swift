import UIKit

//: # Interating Collections

//:        * for-in
//:        for element in collection {
//:          statements
//:        }

print("Array", "==============")
let arr = [1, 2, 3]
for num in arr {
  print(num)
}

print("Set", "==============")
let set: Set = [1, 2, 3]
for num in set {
  print(num)
}

print("Dictionary", "==============")
let dict = ["A": 1, "B": 2, "C": 3]
for (key, value) in dict {
  print(key, value)
}


//: ## forEach

print("Array", "===============")
let arr2 = [1, 2, 3]
arr.forEach { (num) in
  print(num)
}

print("Set", "===============")
let set2: Set = [1, 2, 3]
arr.forEach { (num) in
  print(num)
}

print("Dictionary", "==============")
let dict2 = ["A": 1, "B": 2, "C": 3]
dict.forEach { (elem) in
  print(elem.key, elem.value)
}


func withForIn() {
  print(#function)
  let arr = [1, 2, 3]
  for num in arr {
    print(num)
    return
  }
}

func withForeach() {
  print(#function)
  let arr = [1, 2, 3]
  arr.forEach { (num) in
    print(num)
    return
  }
}


withForIn()
withForeach()
