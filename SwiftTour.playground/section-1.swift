// Playground - noun: a place where people can play

import Cocoa


// * SIMPLE VALUES *
// var for variable
// let for making a constant
var myVariable = 42
myVariable = 50
let myConstant = 42

// seperate the type by using a colon
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

// Experiemnt:
let Float: Float = 4

// To convert a value to a different type
// Using eplicitly make for a desired type.
let label = "The width is "
let width = 94
let widthLable = label + String(width)
// Experiment: Removing the conversiton to String?
// Answer: Could not find an overload for + that accepts the supplied arguments.

// Simpler way to include an integer in a string.
// \() put integer inside () to convert it.
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) piece of fruit."

let one = 2.0
let two = 3.0
let onetwo = "Hi Eric, \(one+two) years old"

// kind of like python to declare array and dictionaries
// access array using index.
var shoppingList = ["catfish","water","tulips","blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Kaylee"]
// to create an empty array or dictionary, using initializer:
// String[] means it is an array
// Dictionary<arg1,arg2> means it is an dictionary and it needs to declare the tyeps of key and value
let emptyArray = String[]()
let emptyDictionary = Dictionary<String,Float>()

// * CONTROL FLOW *

// the for while loop and if like Python
let individualScores = [75,43,103,87,12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3 // keep one space for operator
    } else {
        teamScore += 1
    }
}
teamScore = 0
var index = 0
while index < 5 {
    if individualScores[index] < 50 {
        teamScore += 3 // keep one space for operator
    } else {
        teamScore += 1
    }
    index += 1
}
// if score {...} is an error, not an implicit comparison to ZERO

// use ?after String to make a optional value which is nil or has value in it.
var optionalString: String? = "Hello"
optionalString == nil // check the string is Nil or not.

// var optionalName: String? = "Don Leung"
// use if let to compare the optional variable
var optionalName: String? = "Don"
optionalName == nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, nil"
}
// Experiment:Change optionalName to nil. What greeting do you get? Add an else clause that sets a different greeting if optionalName is nil.
// if no default clause, there is an error.
let vegetable = "red pepper"
switch vegetable {
case"celery":
    let vegetableComment = "Add some raisins"
case "cucumber", "watercress":
    let vegetableComment = "Awesome"
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everthing tasts good."
}

// for-in iteration
// Experiment: add a variable for keep track which type of the variable is, and another for the largest number was.
//**
// * This is a part we need to think why the order of dictionary is not the same order when we declare.
let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25],
]
var largest = 0
var largestKind = ""
for (kind,numbers) in interestingNumbers {
    kind
    for number in numbers {
        if number > largest{
            largest = number
            largestKind = kind
        }
    }
}
largest
largestKind

var n = 2
while n < 100 {
    n *= 2
}
n

var m = 2
do {
    m *= 2
} while m < 100
// using .. to make range of indexs to do loop. not includes the last number.
var firstForLoop = 0
for i in 0..3 {
    firstForLoop += i
}
firstForLoop

var secondForLoop = 0
for var i = 0; i < 3; ++i {
    secondForLoop += 1
}
secondForLoop

// * FUNCTIONS AND CLOSURES *

// Use func to declare a function and -> to define the return type.
// Experiment: add another parameter.
func greet(name: String, day: String, lunch: String) -> String{
    return "Hello \(name), today is \(day), lunch is \(lunch)."
}

greet("Bob", "Tuesday", "Steamed ribs")

// Use tuple to return multiple values from a function
func getGasPrices() -> (Double, Double, Double) {
    return (3.59,3.69,3.79)
}
getGasPrices()

// ** IMPORTANT! **
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(42,597,12)

// Experiment: write a function that calculates the average of its arguments.
// * Intrepreter gone wrong *
func averageOf (numbers: Int...) -> Int {
    var sum = 0
    
    for number in numbers {
        sum += number
    }
    
    return sum/numbers.count
}

averageOf(42, 597, 12)

// nested functions
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

// * Functions are a first-class type. this means that a function can return another function as its value.
func makeIncrementer() -> (Int -> Int) {
    func addOne(number:Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

// A function can take another function as one of its argument.
// * IMPORTANT! ＊ when find one the for-loop will stop.
func hasAnyMatches(list:Int[], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number:Int) -> Bool {
    return number < 10
}
var numbers = [20,19,7,12]
hasAnyMatches(numbers, lessThanTen)
// ** What variable.* means? like a shortcut expression for return a value for a variable
// Using "in" to seperate the arguments and returen value.
numbers.map ({
    (number: Int) -> Int in
    let result = 3 * number
    return result
    })
// Experiment: Rewrite the closure to return zero for all odd numbers.
numbers.map ({
    (number: Int) -> Int in
    if number % 2 == 0 {
        return number
    }
    else {
        return 0
    }
    })

// More concisely, return the only statement in closure.
numbers.map({ number in 3*number })

// details: https://developer.apple.com/library/prerelease/ios/documentation/swift/conceptual/swift_programming_language/Closures.html
// Here sort is a built-in function
// Use number as a shorthand to represent the argument.
// In this one the first argument is the array which we need to sort, and the closure is the second argument let the sorted array follows the descending rule.
sort([1,5,3,12,2]){ $0 > $1 }

// * OBJECTS AND CLASSES *

// Using class yourname { yourcode } to represent a class
// SwiftProgramming in playground is NOT space sensative.
// Experiment: Add a constant property with let, and add another method that takes argument.
class Shape {
    var numberOfSides = 0
    let constant = 3
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    func methodWith(test: Int) -> String {
        return "Just for experiment."
    }
}
// Using dot to access the properties and methods of an instance.
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

// Using init to let a class get a initializer.
// Using deinit to createa deinitializer put some clean up before the object is deallocated
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name:String) {
        self.name = name // Self is to distinguish the name property and the name argument.
    }
    func simpleDescription() -> String {
        return "A Shape with \(numberOfSides) sides."
    }
}
// For subclass we use colon to seperate.
// override is to override superclass method, without it, the compiler will give an error.
class Square:NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name:String) {
        self.sideLength = sideLength
        super.init(name:name)
        numberOfSides = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    override func simpleDescription() -> String {
        return "A square shape override superclass implementation"
    }
}

var squareInstance = Square(sideLength:5.2, name:"Test")
squareInstance.area()
squareInstance.simpleDescription()

// Experiement: make another subclass of NamedShape called Circle that takes a radius and a name as arguments to its initializer. Implment an area and a describe method on the Circle Class.
class Circle:NamedShape {
    var radius: Double
    let pi: Double = 3.14
    
    init(radius: Double, name:String) {
        self.radius = radius
        super.init(name:name)
    }
    func area() -> Double {
        return pi * radius * radius
    }
    override func simpleDescription() -> String {
        return "A circle \(name) has been made."
    }
}

var circleInstance = Circle(radius: 5.0, name:"Hope it works")
circleInstance.area()
circleInstance.simpleDescription()




