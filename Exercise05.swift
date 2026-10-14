// Exercise 05 – switch and Ranges

let grade = "B"

switch grade {
case "A":
    print("Excellent")

case "B", "C":
    print("Good")

case "D":
    print("Needs Work")

default:
    print("Unknown Grade")
}

// Using Ranges in a Switch
let mark = 68

switch mark {
case 75...100:
    print("Distinction")

case 50..<75:
    print("Pass")

case 0..<50:
    print("Fail")

default:
    print("Invalid Mark")
}

// Activity 5 – Temperature Description
let temperature = 27

switch temperature {
case Int.min..<0:
    print("Freezing")

case 0...15:
    print("Cold")

case 16...25:
    print("Moderate")

case 26...35:
    print("Warm")

default:
    print("Hot")
}
