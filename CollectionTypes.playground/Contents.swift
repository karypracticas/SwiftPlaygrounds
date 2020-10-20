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
