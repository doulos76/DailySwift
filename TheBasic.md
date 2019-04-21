# The Basics

Swift is a new programming language for iOS, macOS, watchOS, and tvOS app development.
Nonetheless, many parts of Swift will be familiar from your experience of developing in C and Objective-C.

Swift provides its own versions of all fundamental C and Objective-C types, (`Int`, `Double`, `Bool`, `String`). Swift also provides powerful versions of three primary collection types, `Array`, `Dictionary`, `Set`.

Variables and Constant.

Tuple

Optional

Swift is a _type-safe_ language.

## Constants and Variables

### Declaring Constants and Variables

```Swift
let maximumNumberOfLoginAttemps = 10
var currentLoginAttempt = 0
```

This code can be read as: 

Declare a new constant called `maximumNumberOfLoginAttemps`, and give it a value of `10`.

Declare a new variable called `currentLoginAttempt`, and give it an initial value of `0`.
	

```Swift
var x = 0.0, y = 0.0, z = 0.0
```

### Type Annotations

```SWift
var welcomeMessage: String
```
The clone(:) in the declaration means "...of type...", so the code above can be read as:

"Declare a variable called `welcomeMessage` that is of type `String`."

```Swift
var red, green, blue: Double
```

### Naming Constants and Variables

```Swift
let 𝜋 = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"
```


[[link](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)]