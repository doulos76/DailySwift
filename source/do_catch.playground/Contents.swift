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

do {
  try parsing(data: [:])
} catch DataParsingError.invalidType {
  print("handle invalidType error")
} catch {
  print("handle error")
}

do {
  try parsing(data: ["name": ""])
} catch {
  print("handle error")
} catch DataParsingError.invalidType {
  print("handle invalidType error")
}

do {
  try parsing(data: ["name": ""])
} catch DataParsingError.invalidType {
  print("handle invalidType error")
}

//func handleError() {
//  do {
//    try parsing(data: ["name" : ""])
//    // Errors thrown from here are not handled because the enclosing catch is not exhaustive
//  } catch DataParsingError.invalidType{
//    print("handle invalidType error")
//  }
//}

func handleError() throws {
  do {
    try parsing(data: ["name" : ""])
    // Errors thrown from here are not handled because the enclosing catch is not exhaustive
  } catch DataParsingError.invalidType{
    print("handle invalidType error")
  }
}

func throwError() throws {
  do {
    try parsing(data: ["name" : ""])
  }
  try parsing(data: ["name": ""])
}

func processError() throws {
  do {
    try parsing(data: ["name": ""])
  } catch {
    if let error = error as? DataParsingError {
      switch error {
      case .invalidType:
        print("invalid type")
      default:
        print("handle error")
      }
    }
  }
}

