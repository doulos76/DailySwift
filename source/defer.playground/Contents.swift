import UIKit

// defer : code의 실행을 scope가 종료되는 시점으로 지연 시킴, 주로 코드에서 사용했던 자원을 정리할 때 활용함

//defer {
//  // statements
//}


//func processFile(path: String) {
//  let file = FileHandle(forReadingAtPath: path)
//  // Process
//  file?.closeFile()
//}

//func processFile(path: String) {
//  let file = FileHandle(forReadingAtPath: path)
//  if path.hasSuffix(".jpg") {
//    return
//  }
//  // Process
//  file?.closeFile()
//}

func processFile(path: String) {
  print("1")
  let file = FileHandle(forReadingAtPath: path)
  
  defer {
    print("2")
    file?.closeFile()
  }
  
  if path.hasSuffix(".jpg") {
    print("3")
    return
  }
  
  print("4")
  // Process
}

processFile(path: "file.swift")


print("\n================[testDefer]================\n")
func testDefer() {
  defer {
    print(1)
  }
  
  defer {
    print(2)
  }
  
  defer {
    print(3)
  }
}

testDefer()
