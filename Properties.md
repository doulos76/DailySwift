# Properties

## Stored Properties

* class와 structure에서 선언할 수 있음
* 인스턴스에 속한 속성
* 인스턴스가 생성될 때마다 새로운 메모리 공간이 생성되고, 인스턴스마다 stored property 값이 달라짐

```Swift
var name: Type = DefaultValue
let name: Type = DefaultValue
```


## Lazy Stored Property

지연 저장 속성은 인스턴스가 초기화 되는 시점이 아닌 속성에 처음 접근하는 시점에 초기화 됨

```Swift
lazy var name: Type = DefaultValue
```

`lazy` keyword를 붙여서 지연 저장 속성으로 선언

## Computed Properties

* Memory 공간을 가지지 않음
* 다른 속성에 저장된 값을 읽어서 필요한 계산을 실행한 다음에 리턴하거나 속성으로 전달된 값을 다른 속성에 저장
* `var` keyword로 선언해야 함
* `class`, `struct`에서만 사용 가능

### Computed Property

```Swift
var name: Type {
	get { 
		statements
		return expr
	}
	set(name) {
		statements
	}
}
```

example

```Swift
import UIKit

class Person {
  var name: String
  var yearOfBirth: Int
  
  init(name: String, year: Int) {
    self.name = name
    self.yearOfBirth = year
  }
  
  var age: Int {
    get {
      let calender = Calendar.current
      let now = Date()
      let year = calender.component(.year, from: now)
      return year - yearOfBirth
    }
    set {
      let calender = Calendar.current
      let now = Date()
      let year = calender.component(.year, from: now)
      yearOfBirth = year - newValue
    }
  }
}

let person1 = Person(name: "Lee, SJ", year: 2002)
person1.age

let person2 = Person(name: "Koo, mh", year: 1976)
person2.age

person2.age = 50
person2.yearOfBirth
```

### Read-only Computed Perperty

```Swift
var name: Type {
	get {
		statements
		return expr
	}
}

var name: Type {
	statements
	return expr
}

```

## Property Observer

속성 감시자, 속성을 감시함, 속성 감시자를 활용하면 새로운 값이 저장되는 시점에 원하는 코드를 실행할 수 있음

```Swift
var name: Type = DefaultValue {
	willSet(name) {
		statement
	}
	didSet(name) {
		statements
	}
}
```

`willSet`: property에 값이 저장되기 직전에 호출됨, 새로 저장되는 값은 parameter(newValue)로 전달됨

`didSet` : 속성에 새로운 값이 저장된 직후에 호출됨, didSet 블록에는 이전 값이 파라미터로 전달됨, `oldValue`

## Type Property

형식 자체에 속한 속성

인스턴스마다 개별 공간이 생성되지 않고 모든 인스턴스가 공유하는 하나의 공간만 생성됨, 모든 인슨턴스가 여기에 저장된 값을 공유함

```Swift
static var name: Type = DefaultValue
static let name: Type = DefaultValue
```

example

```Swift
class Math {
	static let pi = 3.14
}
```

### Computed Type Perperty

계산 속성에 `static`, `class`를 붙여서 선언