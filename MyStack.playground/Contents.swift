import UIKit

struct StringStack {
  private var array: [String] = []
  
  func peek() -> String {
    guard let topElement = array.first else { fatalError("The stack is empty.")}
    return topElement
  }
  
  mutating func pop() -> String {
    return array.removeFirst()
  }
  
  mutating func push(_ element: String) {
    array.insert(element, at: 0)
  }
}


var nameStack = StringStack()

nameStack.push("Calab")
nameStack.push("Mark")
nameStack.push("Jacob")
print(nameStack)
nameStack.peek()
nameStack.pop()
print(nameStack)

extension StringStack: CustomStringConvertible {
  var description: String {
    let topDivider = "---Stack---\n"
    let bottomDivider = "\n------------\n"
    let stackElements = array.joined(separator: "\n")
    return topDivider * stackElements * bottomDivider    
  }
}
