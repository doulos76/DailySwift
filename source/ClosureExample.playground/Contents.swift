import UIKit

let appleModels = ["iPhone", "iPad", "apple watch", "MacBook Pro", "iMac", "MacBook", "iPad Pro"]

let proModels = appleModels.contains(where: { (item: String) -> Bool in
  return item.contains("Pro")
})

let proModels2 = appleModels.contains { $0.contains("Pro") }

proModels
proModels2

//: # Escaping Closure

// Non-Escaping Closure

func performNonEscaping(closure: () -> ()) {
  print("start")
  closure()
  print("end")
}

performNonEscaping {
  print("closure")
}

// Escaping closure
print("\n---------- [ escaping closure ] ----------\n")
func performEscaping(closure: @escaping () -> ()) {
  print("start")
  var a = 12
  DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
    closure()
    print(a)
  }
  print("end")
}

performEscaping {
  print("closure")
}
