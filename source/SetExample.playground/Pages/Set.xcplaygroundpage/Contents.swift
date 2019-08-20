import UIKit

//: # Set

//:     Set<T>

let set: Set<Int> = [1, 2, 2, 3, 3, 3]
set.count


//: Instapcting a Set

set.count
set.isEmpty

//: ## Testing for Membership

set.contains(1)

//: ## Adding and Removing Elements

var words = Set<String>()

var insertResult = words.insert("Swift")
insertResult.inserted
insertResult.memberAfterInsert

insertResult = words.insert("Swift")
insertResult.inserted
insertResult.memberAfterInsert

var updateResult = words.update(with: "Swift")
updateResult

updateResult = words.update(with: "Apple")
updateResult

var value = "Swift"
value.hashValue

updateResult = words.update(with: value)
updateResult

value = "Hello"
value.hashValue

updateResult = words.update(with: value)
updateResult

struct SampleData: Hashable {
  var hashValue: Int = 123
  var data: String
  
  init(_ data: String) {
    self.data = data
  }
  
  static func ==(lhs: SampleData, rhs: SampleData) -> Bool {
    return lhs.hashValue == rhs.hashValue
  }
  
  func hash(into hasher: inout Hasher) { }
}

var sampleSet = Set<SampleData>()

var data = SampleData("Swift")
data.hashValue

var r = sampleSet.insert(data)
r.inserted
r.memberAfterInsert
sampleSet

data.data = "Hello"
data.hashValue

r = sampleSet.insert(data)
r.inserted
r.memberAfterInsert
sampleSet


sampleSet.update(with: data)
sampleSet

words
words.remove("Swift")
words

words.remove("Ghost")

words.removeAll()
