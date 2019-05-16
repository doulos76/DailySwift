import UIKit

/*
 func printNumbers(max: Int) {
 for x in 0...max {
 print(x)
 }
 }
 
 printNumbers(max: 3)
 
 // Recursion
 func printNumberRec(max: Int) {
 if max > 0 {
 printNumbers(max: max - 1)
 }
 print(max)
 }
 
 printNumberRec(max: 4)
 */

// Factorials of non negative integer
// 1! = 1
// 2! = 1 * 2 = 2
// 3! = 1 * 2 * 3 = 6
// 7! = 1 * 2 * 3 * 4 * 5 * 6 * 7 = 5040

func factorialFirst(num: Int) -> Int {
  var factorial = 0
  for x in 1...num {
    if factorial != 0 {
      factorial = factorial * x
    } else {
      factorial = 1
    }
  }
  return factorial
}

factorialFirst(num: 1)

func factorial(num: Int) -> Int {
  if num == 1 {
    return 1
  } else {
    return num * factorial(num: num - 1)    
  }
}

factorial(num: 7)
