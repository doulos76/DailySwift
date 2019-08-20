//: [Previous](@previous)

import Foundation

//: # Compare Array

let a = ["A", "B", "C"]
let b = ["a", "b", "c"]

a == b
a != b

a.elementsEqual(b)
a.elementsEqual(b) { (lhs, rhs) -> Bool in
  return lhs.caseInsensitiveCompare(rhs) == .orderedSame
}

//: # Finding Elements

let nums = [1, 2, 3, 1, 4, 5, 2, 6, 7, 5, 0]
nums.contains(1)
nums.contains(8)

nums.contains { n -> Bool in
  return n % 2 == 0
}

nums.first { n -> Bool in
  return n % 2 == 0
}

nums.firstIndex(of: 1)

nums.lastIndex(of: 1)

//: # Sorting on Array

nums.sorted()
nums

nums.sorted { a, b -> Bool in
  return a > b
}

nums.sorted().reversed()
[Int](nums.sorted().reversed())

var mutableNums = nums
mutableNums.sort()
mutableNums.reverse()

mutableNums
mutableNums.swapAt(0, 1)

mutableNums.shuffle()


//: [Next](@next)
