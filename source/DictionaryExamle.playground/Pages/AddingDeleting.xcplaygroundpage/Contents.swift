//: [Previous](@previous)

import Foundation

//: # Adding Keys and Values

var words = [String: String]()
words["A"] = "Apple"
words["B"] = "Banana"
words.count
words

words["B"] = "Ball"
words.count
words

words.updateValue("City", forKey: "C")
words.count
words

words.updateValue("Circle", forKey: "C")

//: ## Removing Keys and Values

words
words["B"] = nil
words
words["Z"] = nil
words.removeValue(forKey: "A")
words
words.removeValue(forKey: "A")
words

words.removeAll()
words



//: [Next](@next)
