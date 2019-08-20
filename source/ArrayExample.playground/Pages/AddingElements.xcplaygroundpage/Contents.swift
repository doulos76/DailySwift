//: [Previous](@previous)

import Foundation

//: # Adding Elements

var alphabet = ["A", "B", "C"]
alphabet.append("E")
alphabet.append(contentsOf: ["F", "G"])

alphabet.insert("D", at: 3)
alphabet.insert(contentsOf: ["a", "b", "c"], at: 0)

alphabet[0...2] = ["x", "y", "z"]
alphabet

alphabet.replaceSubrange(0...2, with: ["a", "b", "c"])
alphabet

alphabet[0...2] = ["z"]
alphabet

alphabet[0...2] = []

//: # Remivig Elements

alphabet = ["A", "B", "C", "D", "E", "F", "G"]
alphabet.remove(at: 2)
alphabet

//alphabet.remove(at: 222)

alphabet.removeFirst()
alphabet

alphabet.removeFirst(2)
alphabet

alphabet.removeLast()
alphabet

alphabet.removeAll()

alphabet.popLast()

alphabet = ["A", "B", "C", "D", "E", "F", "G"]
alphabet.popLast()
alphabet
alphabet.removeSubrange(0...2)
alphabet
alphabet[0...2] = []
alphabet


//: [Next](@next)
