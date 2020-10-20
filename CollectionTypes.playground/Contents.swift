//Collection Types


//ARRAYS
/*An array stores values of the same type in an ordered list.
    The same value can appear in an array multiple times at different positions.*/
print("--------------------ARREGLOS----------------------")

//Create an Empty Array
var someInts = [Int]()
print("someInts is of type [Int] \(someInts.count) items.")

//Creating an Array with a Default Value
var threeDoubles = Array(repeating: 0.0, count: 3)

//Creating an Array by Adding Two Arrays Together
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles

//Creating an Array with an Array Literal
var shoppingList: [String] = ["Eggs","Milk"]

//Accessing and Modifying an Array
print("The shopping list contains \(shoppingList.count) items.")
if shoppingList.isEmpty {
    print("La lista de compras está vacía")
}else {
    print("La lista de compras no está vacía")
}

//Agregar un nuevo elemento al final del arreglo
shoppingList.append("Flour")

//Obtener un elemento del arreglo
var firstItem = shoppingList[0]

//Insertar un elemento en una determinada posición
shoppingList.insert("Leche de Soya", at: 1)

//Quitar un elemento del arreglo
shoppingList.remove(at: 2)

//Quitar el ultimo elemento del arreglo
let quitarUltimo = shoppingList.removeLast()

//Iterating Over an Array
for item in shoppingList {
    print(item)
}

//Imprimir arreglo con el número del arreglo
for (index,value) in shoppingList.enumerated(){
    print("Item \(index + 1): \(value)")
}



//SETS
/*A set stores distinct values of the same type in a collection with no defined ordering.
    you can use a set instead of an array when the order of items is not important,
    or when you need to ensure that an item only appear once.*/
print("--------------------SETS--------------------------")

//Creating and Initializing an Empty Set
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

//Creating a Set with an Array Literal
var favoriteGenres: Set<String> = ["Rock","Classical","Hip-Hop"] //Si se inicializa con elementos no es necesario hacer explicito <String>

//Accessing and Modifying a Set
print("I have \(favoriteGenres.count) favorite music genres.")
if favoriteGenres.isEmpty {
    print("No hay generos musicales favoritos.")
}else{
    print("Si tengo varios generos musicales favoritos.")
}

//Verificar si se tiene un elemento en específico
if favoriteGenres.contains("Rock") {
    print("Genial si tienen rock")
}else{
    print("Sin Rock")
}

//Iterating Over a Set
for genre in favoriteGenres {
    print(genre)
}

//Los Sets no tienen un orden, así que para imprimirlos en orden:
for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

//Performing Set Operations
//union,intersection,substracting,symetricDifference
let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let singleDigitPrimeNumbers: Set = [2,3,5,7]

oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

//Set Membership and Equality
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)    //Todos los valores de houseAnimals están contenidos en farmAnimals?
farmAnimals.isSuperset(of: houseAnimals)  //Todos los valores contienen todos los valores de un set específico?
farmAnimals.isDisjoint(with: cityAnimals) //No tienen valores en común?
farmAnimals == houseAnimals               //Son iguales?


//DICTIONARIES
/*A dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary. Unlike items in an array, items in a dictionary do not have a specified order. You use a dictionary when you need to look up values based on their identifier, in much the same way that a real-world dictionary is used to look up the definition for a particular word.*/
print("-----------------DICTIONARIES----------------------")

//Creating an Empty Dictionary
var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"

//Creating a Dictionary with a Dictionary Literal
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"] //También puede crearse de la siguiente manera:
//var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

//Accessing and Modifying a Dictionary
print("The airports dictionary contains \(airports.count) items.")

if airports.isEmpty {
    print("El diccionario de aeropuertos está vacío")
}else {
    print("El diccionario tiene aeropuertos")
}

//Agregar un elemento al diccionario
airports["LHR"] = "London Heathrow"
print("The airports dictionary contains \(airports.count) items.")

//Cambiar el valor asociado a determinado key
airports["LHR"] = "London"

//Obtener un valor por medio de la key
if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName)")
}else {
    print("That airport is not in the airports dictionary.")
}

//Iterating Over a Dictionary
for (airportCode,airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

/*Swift’s Dictionary type does not have a defined ordering. To iterate over the keys or values of a dictionary in a specific order, use the sorted() method on its keys or values property.*/
