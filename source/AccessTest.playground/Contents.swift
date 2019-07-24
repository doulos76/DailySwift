import UIKit

var str = "Hello, playground"


class A {
  private var property: Int!
}


class B: A {
  override init() {
    super.init()
    property = 10 // property 에 접근 할 수 있음
  }
}

let b = B()
b.property
