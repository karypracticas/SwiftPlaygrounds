//Control Flow
print("*************")
print("CONTROL FLOW -> For,while,repeat-while")

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

//While Loops
print("------------------WHILE LOOPS--------------------")
var age = 34
while age <= 50  {
    print("Keep trying")
    age+=1
}

//Repeat While
print("------------------REPEAT WHILE--------------------")
var currentTime = 8
repeat {
    print("Dance and sing")
    currentTime+=1
}while currentTime <= 12
  
//Conditional statements
print("*************")
print("CONDITIONAL STATEMENTS -> if,switch")

//if
print("------------------IF--------------------")

//En su forma más simple
var temperatura = 5
if temperatura < 20 {
    print("Debes usar una chamarra")
}

//Usando else
var temperaturaCalurosa = 40
if temperaturaCalurosa > 20 {
    print("Es verano")
} else {
    print("Quizá ya es invierno")
}

//Múltiples if
var temperaturaFarenheit = 90
if temperaturaFarenheit <= 32{
    print("Hace mucho frío")
}else if temperaturaFarenheit >= 86{
    print("Clima templado")
} else {
    print("No hace tanto frío, puedes usar una playera")
}

//Switch
print("------------------SWITCH--------------------")

let letra = "A"
switch letra {
case "A","a":
    print("Primera letra del alfabeto")
case "Z":
    print("última letra del alfabeto")
default:
   print("No es ni la primer letra ni la última")
}

//Interval Matching
let conteoAproximado = 62
let cosasContadas = "lunas orbitando Saturno"
let conteoNatural: String

switch conteoAproximado {
case 0:
    conteoNatural = "no"
case 1..<5:
    conteoNatural = "unas cuantas"
case 5..<12:
    conteoNatural = "varias"
case 12..<100:
    conteoNatural = "docenas de"
case 100..<1000:
    conteoNatural = "cientos de"
default:
    conteoNatural = "muchas"
}

print("Hay \(conteoNatural) \(cosasContadas)")


//Usando tuplas
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

//Usando value bindings
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}


//Usando Where
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

//Compound cases
let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonant")
default:
    print("\(someCharacter) is not a vowel or a consonant")
}

//Control Transfer statements
print("*************")
print("CONTROL TRANSFER STATEMENTS -> continue,break,fallthrough,return,throw")

//continue
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)
// Prints "grtmndsthnklk"

/* The code above calls the continue keyword whenever it matches a vowel or a space, causing the current iteration of the loop to end immediately and to jump straight to the start of the next iteration.*/

//break
let numberSymbol: Character = "三"  // Chinese symbol for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value could not be found for \(numberSymbol).")
}
// Prints "The integer value of 三 is 3."

//fallthrough
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)
// Prints "The number 5 is a prime number, and also an integer."

/* If the value of integerToDescribe is one of the prime numbers in the list, the function appends text to the end of description, to note that the number is prime. It then uses the fallthrough keyword to “fall into” the default case as well. The default case adds some extra text to the end of the description, and the switch statement is complete.

Unless the value of integerToDescribe is in the list of known prime numbers, it is not matched by the first switch case at all. Because there are no other specific cases, integerToDescribe is matched by the default case.*/

/* The fallthrough keyword simply causes code execution to move directly to the statements inside the next case (or default case) block */


//guard
/* A guard statement, like an if statement, executes statements depending on the Boolean value of an expression. You use a guard statement to require that a condition must be true in order for the code after the guard statement to be executed. Unlike an if statement, a guard statement always has an else clause—the code inside the else clause is executed if the condition is not true.*/

//Checking API Availability
print("*************")
print("Checking API Availability")

if #available(iOS 10,macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}
