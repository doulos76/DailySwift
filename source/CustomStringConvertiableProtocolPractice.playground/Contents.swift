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

struct Point {
  let x: Int, y: Int
}

let p = Point(x: 21, y: 30)
print(p)

extension Point: CustomStringConvertible {
  var description: String {
    return "(\(x), \(y))"
  }
}

print(p)
