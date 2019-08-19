import UIKit

func add(a: Int, b: Int) -> Int {
  return a + b
}

add(a: 12, b: 24)


func sayHello(to: String = "Stranger") {
  print("Hello, \(to)")
}

sayHello(to: "Swift")
sayHello()

func printSum(of nums: Int...) {
  var sum = 0
  for num in nums {
    sum += num
  }
  print(sum)
}

printSum(of: 1, 2, 3)
printSum(of: 1, 2, 3, 4, 5)

var num1 = 12
var num2 = 34

func swapNumber(_ a: inout Int, with b: inout Int) {
  let tmp = a
  a = b
  b = tmp
}

swapNumber(&num1, with: &num2)
num1
num2
