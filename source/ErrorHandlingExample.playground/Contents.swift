import UIKit

// Error Type
enum DataParsingError: Error {
  case invalidType
  case invalidField
  case missingRequiredField(String)
}

// Error 전달하기
// throw expression

// Throwing function
func parsing(data: [String: Any]) throws {
  guard let _ = data["name"] else {
    throw DataParsingError.missingRequiredField("name")
  }
  guard let _ = data["age"] as? Int else {
    throw DataParsingError.invalidType
  }
  // Parsing
}

// try expression

//try expression
//try? expression
//try! expression

try? parsing(data: [:])

