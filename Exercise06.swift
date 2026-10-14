// Exercise 06 – Loops
// (each part is wrapped in do { } so repeated names like "marks" and "names" don't clash)

// Part A – for-in
for i in 1...5 {
    print("Week \(i)")
}

// Loop Through an Array
do {
    let names = ["Amal", "Nimali", "Ruwan"]

    for name in names {
        print(name)
    }
}

// Using enumerated()
do {
    let names = ["Amal", "Nimali", "Ruwan"]

    for (index, name) in names.enumerated() {
        print("\(index): \(name)")
    }
}

// Part B – while
var balance = 1000
var week = 0

while balance > 0 {
    balance -= 300
    week += 1
}

print("Ran out in week \(week)")

// Part C – repeat-while
var attempts = 0

repeat {
    attempts += 1
    print("Attempt \(attempts)")
} while attempts < 3

// break and continue
do {
    let marks = [72, -1, 65, 48, 90]

    for mark in marks {

        if mark < 0 {
            continue
        }

        if mark == 90 {
            break
        }

        print(mark)
    }
}

// Activity 6
do {
    let marks = [72, -1, 55, 43, 90, 88]

    for mark in marks {

        if mark < 0 {          // 1. ignore negative marks
            continue
        }

        if mark == 90 {        // 2. stop processing if 90 is found
            break
        }

        print(mark)            // 3. print every valid mark before the loop stops
    }
}

// Putting Collections and Control Flow Together
do {
    let names = ["Amal", "Nimali", "Ruwan", "Sanduni"]
    let marks = [72, 45, 48, 90]

    let passMark = 50

    var passedStudents: [String] = []

    for (index, mark) in marks.enumerated() {

        if mark >= passMark {
            passedStudents.append(names[index])
            print("\(names[index]): \(mark) - Pass")
        } else {
            print("\(names[index]): \(mark) - Fail")
        }
    }

    print("Passed Students: \(passedStudents)")
}
