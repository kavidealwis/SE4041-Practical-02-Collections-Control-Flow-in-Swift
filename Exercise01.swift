// Exercise 01 – Arrays

// Step 1 – Create an Array
var marks = [72, 65, 48, 90, 55]
print(marks)

// Step 2 – Access Array Elements
print(marks[0])
print(marks[2])
print(marks[4])

// Step 3 – Useful Array Properties
print(marks.count)
print(marks.isEmpty)
print(marks.first)
print(marks.last)

// Step 4 – Modify an Array
marks[2] = 52
print(marks)

marks.append(88)
marks.insert(60, at: 1)
print(marks)

marks.removeLast()
marks.remove(at: 1)
print(marks)

// Step 5 – Useful Array Methods
// (wrapped in do { } so the new "let marks" doesn't clash with "var marks" above)
do {
    let marks = [72, 65, 48, 90, 55]

    print(marks.max()!)
    print(marks.min()!)
    print(marks.contains(90))
    print(marks.sorted())
    print(marks.sorted(by: >))

    let total = marks.reduce(0, +)
    print(total)

    let average = Double(total) / Double(marks.count)
    print(average)
}

// Activity 1
// The activity asks for five modules, you gave four, so replace "FIFTH_MODULE" with your fifth code
var modules = ["SE4041", "SE4061", "IT4140", "IT4010", "FIFTH_MODULE"]

print(modules)                       // 1. entire array
print(modules.first!)                // 2. first module
print(modules.last!)                 // 3. last module
modules.append("NEW_MODULE")         // 4. add one new module (use any module name/code)
print(modules.count)                 // 5. number of modules
print(modules.contains("SE4041"))    // 6. check "SE4041"
