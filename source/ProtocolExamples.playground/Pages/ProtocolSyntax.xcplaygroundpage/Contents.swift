import UIKit

//: # Protocol

protocol Something {
  func doSomething()
}

struct Size: Something {
  func doSomething() {
    print("doSomething")
  }
}

protocol SomethingObject: AnyObject, Something {
  
}

//struct Value: SomethingObject {
//
//}

class Value: SomethingObject {
  func doSomething() {
    
  }
}
