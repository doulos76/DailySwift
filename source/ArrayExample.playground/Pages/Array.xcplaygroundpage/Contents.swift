import UIKit

//: # Array
//: - ordered collection
//: - single type
//: - 0-based Index

//:       Array<T>
//:       [T]
//:       [elem, elem, ...]


let nums = [1, 2, 3]

let strArray: Array<String>
let strArray2: [String]

let numbers = [1, 2, 3]
let emptyArray: [Int] = []
let emptyArray2 = Array<Int>()
let emptyArray3 = [Int]()

let zeroArray = [Int](repeating: 0, count: 10)

numbers.count
numbers.count == 0
numbers.isEmpty
emptyArray.isEmpty

let fruites = ["Apple", "Banana", "Melon"]
fruites[0]
fruites[2]

fruites[0...1]
fruites[fruites.startIndex]
fruites[fruites.index(before: fruites.endIndex)]
fruites.first
fruites.last
emptyArray.first
emptyArray.last

//emptyArray[0]



