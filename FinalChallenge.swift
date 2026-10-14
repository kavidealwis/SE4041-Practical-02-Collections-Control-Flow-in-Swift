// Final Practical Task – Student Performance Manager

// Part A – Store Student Marks
var studentMarks: [String: Int] = [
    "Amal": 72,
    "Nimali": 45,
    "Ruwan": 68,
    "Sanduni": 90,
    "Kasun": 38
]

var passedStudents: [String] = []
var gradesAwarded: Set<String> = []
var passCount = 0
var failCount = 0

print("==================================")
print("       STUDENT PERFORMANCE")
print("==================================")
print("")

// Dictionary order is not guaranteed, so sort the keys before displaying them
let sortedNames = studentMarks.keys.sorted()

// Part B – Display All Students
// Part C – Determine Grade (switch and ranges)
// Part E – add each grade to the set as it is calculated
for name in sortedNames {

    let mark = studentMarks[name] ?? 0
    var grade = ""

    switch mark {
    case 80...100:
        grade = "A"
    case 75..<80:
        grade = "A-"
    case 70..<75:
        grade = "B+"
    case 65..<70:
        grade = "B"
    case 60..<65:
        grade = "B-"
    case 55..<60:
        grade = "C+"
    case 45..<55:
        grade = "C"
    case 40..<45:
        grade = "C-"
    case 0..<40:
        grade = "F"
    default:
        grade = "Invalid"
    }

    print("\(name) - \(mark) - \(grade)")
    gradesAwarded.insert(grade)
}

print("")
print("----------------------------------")
print("")

// Part D – Passed Students (a student passes when mark >= 50)
for name in sortedNames {

    let mark = studentMarks[name] ?? 0

    if mark >= 50 {
        passedStudents.append(name)
        passCount += 1
    } else {
        failCount += 1
    }
}

print("Passed Students:")
for name in passedStudents {
    print(name)
}

print("")
print("----------------------------------")
print("")

// Part E – Unique Grades
print("Grades Awarded:")
for grade in gradesAwarded.sorted() {
    print(grade)
}

print("")
print("----------------------------------")
print("")

// Part F – Average Mark
let total = studentMarks.values.reduce(0, +)
let average = Double(total) / Double(studentMarks.count)

// Part G – Highest and Lowest Marks
let allMarks = Array(studentMarks.values)

print("Class Average: \(average)")
print("Highest Mark: \(allMarks.max()!)")
print("Lowest Mark: \(allMarks.min()!)")

// Additional Challenge – Search for a Student
print("")
let searchName = "Amal"

if let mark = studentMarks[searchName] {
    print("\(searchName)'s mark is \(mark)")
} else {
    print("Student not found")
}

// Additional Challenge – Count Passes and Fails
print("")
print("Passed: \(passCount)")
print("Failed: \(failCount)")
