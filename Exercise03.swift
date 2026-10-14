// Exercise 03 – Dictionaries

// Step 1 – Create a Dictionary
var marks = [
    "Amal": 72,
    "Nimali": 65,
    "Ruwan": 48
]
print(marks)

// Step 2 – Retrieve a Value
print(marks["Amal"])

// Step 3 – Safely Retrieve a Value
print(marks["Amal"] ?? 0)
print(marks["Kasun"] ?? 0)

// Step 4 – Use Optional Binding
if let mark = marks["Nimali"] {
    print("Nimali scored \(mark)")
} else {
    print("Student not found")
}

// Step 5 – Add and Update Values
marks["Sanduni"] = 90     // add
marks["Amal"] = 75        // update
marks["Ruwan"] = nil      // remove
print(marks)

// Activity 3 – Phone Book
var phoneBook = [
    "Amal": "0771234567",
    "Nimali": "0712345678",
    "Ruwan": "0763456789",
    "Sanduni": "0754567890"
]

// 1. Add a new contact
phoneBook["Kasun"] = "0701112223"

// 2. Update one phone number
phoneBook["Amal"] = "0779998887"

// 3. Remove one contact
phoneBook["Ruwan"] = nil

print(phoneBook)

// 4. Search for a contact using if let
if let number = phoneBook["Nimali"] {
    print("Nimali's number is \(number)")
} else {
    print("Contact not found")
}

// 5. Display "Contact not found" if the key does not exist
if let number = phoneBook["Ruwan"] {
    print("Ruwan's number is \(number)")
} else {
    print("Contact not found")
}
