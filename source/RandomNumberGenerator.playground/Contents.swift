import UIKit

//let randomInteger = Integer.random(in:1...<10)

struct Student {
  let firstName: String
  let lastName: String
}

func generateRandomListOfStudents(students: [Student]) -> [Student] {
  // Implementation goes here ...
  var mutableStudents = students
  
  var randomListOfStudents = [Student]()
  
  while mutableStudents.count > 0 {
    let randomIndex = Int.random(in: 0..<mutableStudents.count)
    let randomStudent = mutableStudents[randomIndex]
    randomListOfStudents.append(randomStudent)
    
    mutableStudents.remove(at: randomIndex)
  }
  return randomListOfStudents
}

// Sample Test Case
let students = [
  Student(firstName: "Bringon", lastName: "Bang"),
  Student(firstName: "Barac", lastName: "Obba"),
  Student(firstName: "Donaad", lastName: "Tump"),
  Student(firstName: "Geoal", lastName: "Push"),
  Student(firstName: "Ben", lastName: "Killer")
]

let randomStudents = generateRandomListOfStudents(students: students)
randomStudents.forEach{print($0.firstName, $0.lastName)}
