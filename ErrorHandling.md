# Error Handling

"Swift.org Error Handling" [[link](https://docs.swift.org/swift-book/LanguageGuide/ErrorHandling.html)]

_Error handling_ is the process of responding to and recovering from error conditions in your program. Swift provides first-class support for throwing, catching, propagating, and manipulating recoverable errors at runtime.

## Representing and Throwing Errors

Error의 종류는 `Error` protocol을 채택한 Enum 형태로 표현

```Swift
enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}
```

Error를 던질때 `throw`문을 사용해서 표현할수있음

```Swift
throw VendingMachineError.insufficientFunds(coinsNeeded: 5)
```

## Handling Errors

### Propagating Errors Using Throwing Functions

```Swift
struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0

    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }

        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }

        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }

        coinsDeposited -= item.price

        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem

        print("Dispensing \(name)")
    }
}
```

### Handling Errors Using Do-Catch

* do - catch 

```Swift
do {
    try expression
    statements
} catch pattern 1 {
    statements
} catch pattern 2 where condition {
    statements
} catch {
    statements
}
```
### Converting Errors to Optional Values

* try?
* try!

### Specifying Cleanup Actions

* defer

```Swift
func processFile(filename: String) throws {
    if exists(filename) {
        let file = open(filename)
        defer {
            close(file)
        }
        while let line = try file.readline() {
            // Work with the file.
        }
        // close(file) is called here, at the end of the scope.
    }
}
```

