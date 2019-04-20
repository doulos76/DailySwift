# Comments

## 한 줄 주석
`//`로 표시하며 `//`이후는 주석으로 표시되며, Code에 영향을 주지 않음

```Swift
// 한 줄 주석
print("Hello, Swift")
```

## 여러줄 주석
`/*`와 `*/`로 표시되며 그 안쪽은 주석으로 처리됨.

```Swift
/*
	주석 처리 줄 1
	...
	주석 처리 줄 n
*/
```

## in-line 주석
`/*`와 `*/`로 표시하며 그 안쪽은 주석으로 처리됨.
거의 사용을 피하는 것이 좋음

```Swift
let x = 3
let y = 5
let sum = /* sum - 합 */x + y
```

## Print

변수나 상수 등을 print 할 때 사용하며, programming결과 값등을 확인할 때 사용함.

일반적으로  `print()`를 사용하지만, 경우에 따라  `debugPrint()`, `dump()`를 사용해서 더 상세한 결과를 볼 수 있음

```Swift
var str = "Hello, playground"
print(str)
//--> Hello, playground

debugPrint(str)
//--> "Hello, playground"

dump(str)
//--> - "Hello, playground"
```

### Link

* print() [link](https://developer.apple.com/documentation/swift/1541053-print)

```Swift
print("One two three four five")
// Prints "One two three four five"

print(1...5)
// Prints "1...5"

print(1.0, 2.0, 3.0, 4.0, 5.0)
// Prints "1.0 2.0 3.0 4.0 5.0"
```

```Swift
print(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")
// Prints "1.0 ... 2.0 ... 3.0 ... 4.0 ... 5.0"
```

```Swift
for n in 1...5 {
    print(n, terminator: "")
}
// Prints "12345"
```

* dubegPrint() [link](https://developer.apple.com/documentation/swift/1539920-debugprint)

```Swift
debugPrint("One two three four five")
// Prints "One two three four five"

debugPrint(1...5)
// Prints "ClosedRange(1...5)"

debugPrint(1.0, 2.0, 3.0, 4.0, 5.0)
// Prints "1.0 2.0 3.0 4.0 5.0"
```

```Swift
debugPrint(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")
// Prints "1.0 ... 2.0 ... 3.0 ... 4.0 ... 5.0"
```

```Swift
for n in 1...5 {
    debugPrint(n, terminator: "")
}
// Prints "12345"
```


* dump() [link](https://developer.apple.com/documentation/swift/1539127-dump)

	dump는 구조체등 복합 자료형의 경우와 같이 세부 내용까지 확인할 때 유용하다.


```Swift
struct Coordinate {
  let x: Int
  let y: Int
  let name: String
}

let myCoordinate = Coordinate(x: 3, y: 5, name: "MyPosition")
dump(myCoordinate)
//▿ __lldb_expr_39.Coordinate
//  - x: 3
//  - y: 5
//  - name: "MyPosition"

print(myCoordinate)
// Coordinate(x: 3, y: 5, name: "MyPosition")

debugPrint(myCoordinate)
// __lldb_expr_39.Coordinate(x: 3, y: 5, name: "MyPosition")
```
 
### source code [link](/source/HelloSwiftIntroduction.playground/Contents.swift)
