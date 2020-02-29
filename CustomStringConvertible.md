# CustomStringConvertible

> Protocol
> ## CustomStringConvertible ##
> A type with customized textual representation.
> ### Declaration
> ```Swift
> protocol CustomStringConvertible
> ```
> ### Overview
> 
> Types that conform to the CustomStringConvertible protocol can provide their own representation to be used when converting an instance to a string. The String(describing:) initializer is the preferred way to convert an instance of any type to a string. If the passed instance conforms to CustomStringConvertible, the String(describing:) initializer and the print(_:) function use the instance’s custom description property.

Accessing a type’s description property directly or using CustomStringConvertible as a generic constraint is discouraged.
> 


* [Referenece](https://developer.apple.com/documentation/swift/customstringconvertible)

## example

```Swift
import UIKit

// MARK:- Person Class

class Person {
  let name: String
  let surname: String
  
  init(name: String, surname: String) {
    self.name = name
    self.surname = surname
  }
}

// MARK:- Book Class

class Book {
  let title: String
  let pageCount: Int
  let authors: [Person]
  
  init(title: String, pageCount: Int, authors: [Person]) {
    self.title = title
    self.pageCount = pageCount
    self.authors = authors
  }
}

extension Person: CustomStringConvertible {
  var description: String {
    return "\(name) \(surname)"
  }
}

extension Book: CustomStringConvertible {
  var description: String {
    return """
    --- --- ---
    Book's title: \(title)
    Written by: \(authors)
    Total page count: \(pageCount)
    --- --- ---
    """
  }
}

let authors: [Person] = [
.init(name: "Erich", surname: "Gamma"),
.init(name: "Richard", surname: "Helm"),
.init(name: "Ralph", surname: "Johnson"),
.init(name: "Jahn", surname: "Vlissides")
]

let book = Book(title: "Design Patterns: Elements of Reusable Object-Orientied Software",
                pageCount: 383,
                authors: authors)

print(book)
print(authors)

```

* Result

```
--- --- ---
Book's title: Design Patterns: Elements of Reusable Object-Orientied Software
Written by: [Erich Gamma, Richard Helm, Ralph Johnson, Jahn Vlissides]
Total page count: 383
--- --- ---
[Erich Gamma, Richard Helm, Ralph Johnson, Jahn Vlissides]

```



