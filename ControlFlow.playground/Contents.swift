//Control Flow

//For-In Loops
print("------------------FOR IN LOOPS--------------------")
let names = ["Ana","Alex","Brian","Jack"]
for name in names {
    print("Hello, \(name)!")
}

let animalLegs = ["Spider": 8,"ant": 6,"cat": 4]
for (animalName,legCount) in animalLegs {
    print("\(animalName)s have \(legCount) legs")
}

for index in 1...5 {
    print("\(index) * 5 = \(index * 5)")
}

let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print(tickMark)  // render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
}

let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    print(tickMark) // render the tick mark every 3 hours (3, 6, 9, 12)
}
