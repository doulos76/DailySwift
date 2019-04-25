import UIKit

// Error Type
enum DataParsingError: Error {
  case invalidType
  case invalidField
  case missingRequiredField(String)
}

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

if let _ = try? parsing(data: [:]) {
  print("success")
} else {
  print("fail")
}

do {
  try parsing(data: [:])
  print("success")
} catch {
  print("fail")
}

try? parsing(data: [:])
try! parsing(data: ["name": "steve", "age": 33])

//try! parsing(data: [:])
