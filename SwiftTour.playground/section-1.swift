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






var str = "Hello, playground"
