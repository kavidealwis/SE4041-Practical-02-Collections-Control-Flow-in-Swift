// Exercise 02 – Sets

// Step 1 – Create a Set
var towns: Set = ["Malabe", "Kandy", "Galle"]
print(towns)

// Step 2 – Insert Values
towns.insert("Jaffna")
towns.insert("Kandy")
print(towns)
print(towns.count)

// Step 3 – Check Membership
print(towns.contains("Kandy"))
print(towns.contains("Colombo"))

// Step 4 – Remove an Item
towns.remove("Galle")
print(towns)

// Step 5 – Set Operations
let swiftClass: Set = ["Amal", "Nimali", "Ruwan"]
let kotlinClass: Set = ["Nimali", "Ruwan", "Sanduni"]

print(swiftClass.union(kotlinClass).sorted())
print(swiftClass.intersection(kotlinClass).sorted())
print(swiftClass.subtracting(kotlinClass).sorted())
print(swiftClass.symmetricDifference(kotlinClass).sorted())

// Activity 2
var mobileDevelopmentStudents: Set = ["Amal", "Nimali", "Ruwan", "Kasun"]
var gameTechnologyStudents: Set = ["Ruwan", "Kasun", "Sanduni", "Dilini"]

print("All students:")
print(mobileDevelopmentStudents.union(gameTechnologyStudents).sorted())

print("Students taking both modules:")
print(mobileDevelopmentStudents.intersection(gameTechnologyStudents).sorted())

print("Students taking only Mobile Development:")
print(mobileDevelopmentStudents.subtracting(gameTechnologyStudents).sorted())

print("Students taking only one of the modules:")
print(mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents).sorted())
