//: Playground - noun: a place where people can play

import UIKit

//1a) Write a function so that it will print out total cost after tip.

//Write your code below
let itemCost = 45
let tipPercentage = 0.15
func totalWithTip(itemCost cost: Int, tipPercentage tip: Double) -> Double {
    let i = Double(cost)
    return (i * tip) + i

}
let myFinalCost = totalWithTip(itemCost: itemCost, tipPercentage: tipPercentage) //Fill in the arguments

//1b)Write a function that it will print out total cost after tip and tax

let taxPercentage = 0.09

//Write your code below
func totalWithTipAndTax (cost: Int, tax: Double) -> Double {
    let i = Double(cost)
    return (i * tax) + myFinalCost
}


let myFinalCostWithTipAndTax = totalWithTipAndTax(itemCost, tax: taxPercentage)//Fill in the arguments


//2a)Write a function takes an Int as input, and returns true if it is even, and false if it is odd

//Write your code below
func isEven(x: Int) -> Bool {
    if x % 2 == 0 {
        return true
    }else {
        return false
    }
}
isEven(3)
    
//2b) Using function above, write code that prints out whether dieRoll is even or odd

let dieRoll = Int(arc4random_uniform(6) + 1)
func evenDie (x: Int) -> Bool {
    if x % 2 == 0 {
        return true
    }else {
        return false
    }
}
evenDie(dieRoll)

//3)
/*
 Write a function that prints the numbers from 1 to x. EXCEPT:
 * If the number if a multiple of 3, print "Fizz" instead of the number
 * If the number is a multiple of 5, print "Buzz" instead of the number
 * If the number is a multiple of 3 AND 5, print "FizzBuzz" instead of the number
 
 Your function should take in one parameter: x (the number to count up to)
 */

func fizzBuzz (x: Int) {
    for i in 1...x {
        switch i {
        case _ where (i % 15 == 0) :
        print("FizzBuzz")
        case  _ where (i % 5 == 0) :
        print("Buzz")
        case _ where (i % 3 == 0) :
        print("Fizz")
        default:
        print(String(i))
                }
    }

}


fizzBuzz(15)
    
//4a) Write a function that takes [Int] as input.  It should return the largest Int in the array.

//Write your code below
//
var theArray = [5, 6 ,7, 9, 21]
var largestInArray = 0
func largestInArray (x: [Int]) {
    for i in theArray {
        if i > largestInArray {
            largestInArray = i
            print(i)
        }
    }
}
largestInArray(theArray)
//4b)
let myArray = [3,5,1,3,532,1,4,91,20,30,92,143]
var largestInMyArray = 0
func largestInMyArray (x: [Int]) {
    for i in myArray {
        if i > largestInMyArray {
            largestInMyArray = i
            print(i)
        }
    }
}
largestInMyArray(myArray)
//Using your function in part a, use String interpolation to print a sentence that states what the largest Int in myArray is
print("The largest Int in myArray is \(largestInMyArray)")

//4c)
//Using your solution to 2a), print a sentence that states whether the largest Int in myArray is even or odd

//print("The largest Int in myArray is \(largestInMyArray) and it is \()")

//5a) Write a function that takes a String as input and returns the number of characters in the string

//Write your code below
//var myStringOne = "hi bob"
//var myArray: [Character] = []
//
//func numbOfChar (myStringOne: String) -> Int {
//for i in myStringOne.characters {
//    myArray.append(i)
//}
//    return(myArray.count)
//}
//numbOfChar(myStringOne)
//5b) Using your function above, print how many characters are in myString

let myString = "Swift is a new programming language for iOS, OS X, watchOS, and tvOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility."
var myArrayString: [Character] = []

func numbOfCharString (myString: String) -> Int {
    for i in myString.characters {
        myArrayString.append(i)
    }
    return(myArrayString.count)
}
numbOfCharString(myString)

//5c) Write a function that counts how many characters in a String match a specific character.  (e.g: count how many "a"s are in a String, or count how many ","s are in a String.

//Sample input:
let FiveCString = "This is a test string for your code"
let targetCharacter = "i"

//Sample output:
//3
let targetCharacter = "s"
var myArrayFiveC = []
var counter = 0
for charInString in FiveCString {
   if 
}

//5d) Write a function that counts how many characters in a String match one of several possible characters.  (e.g: count how many vowels are in a String, or count how many "a"s "b"s and "c"s are in a Sting)

//Sample input:
//let FiveDString = "This one is a little more complicated"
//let targetCharacters = ["a", "e", "i", "o" "u"]

//Sample output:
//13


//Write your code below


//6) Write a function that returns the number of unique Ints in an array of Ints
//Sample input:
//let inputArray = [3,1,4,1,3,2,6,1,9]

//Sample output:
//4

//Explanation:
//2, 4, 6, 9 are unique in the array.  Every other number is not unique.


//7) Write a function that converts a binary number into decimal.  The binary number will be given as an array of Ints.

//Sample input:
//let binaryArray = [1,0,1,1,1,0,1]

//Sample output:
//93

//8) Copy the movie dictionary from homework two and add another [String] to each movie.
//   Name it "locations" and add some dummy data. Use the re-factored nested function
//   from the full lesson (we didn't go over it) to print both the cast list and the 
//   locations.

//Write your code below


//9) Given one movie write a function that takes the movie (remember to use its type)
//   as its only argument and return a tuple that contains name, year and genre.

//Write your code below


//10) Define a function that takes the movie array that will call the function you just created 
//    in answer to the previous question. The new function should return an array of the
//    tuples: (name, year, genre).

//Write your code below


//11) Write a function that takes the movie as its only argument that lists all cast members across movies.
//    The tricky part: no duplicates. I think you'll need to edit the data to create some doubled actors in order
//    to test this. Return should be [String]?.

//Write your code below
