# Guard

```Swift
guard BooleanExpression else {
	return // or break, continue, throw 
}
```

```Swift
guard OptionalBinding, BooleanExpression else {
	return // or break, continue, throw 
}
```

* `guard` keyword 뒤에 조건을 판단하는 boolean 표현식 또는 Optional Binding 구문이 위치하고 마지막 부분에 `else` 블록이 위치함.
* Boolean, Optional binding 사이에 `,`로 구분함
* Boolean, Optional binding 모두 true일 때 이이지는 코드 수행
* 그렇지 않을 경우 `else { }`안에 코드블럭 수행함

