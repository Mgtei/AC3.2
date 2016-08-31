//: Playground - noun: a place where people can play

import UIKit


//1)

//a) Create an instance of a dictionary called citiesDict that maps 3 countries to their capital cities
var citiesDict = ["USA" : "Washington, D.C.", "France" : "Paris", "England" : "London"]

//b) Add two more countries to your dictionary
citiesDict["Turkey"] = "Ankara"
print(citiesDict)

citiesDict.updateValue("Moscow", forKey: "Russia")
print(citiesDict)
//c) Translate at least 3 of the capital names into another language
citiesDict.updateValue("Vaŝingtono", forKey: "USA")
citiesDict.updateValue("paris", forKey: "France")
citiesDict.updateValue("Moskvo", forKey: "Russia")
citiesDict.updateValue("Ankara", forKey: "Turkey")
citiesDict.updateValue("london", forKey: "England")
print(citiesDict)
//2)

var someDict:[String:Int] = ["One": 1, "Two": 4, "Three": 9, "Four": 16, "Five": 25]

//a) using someDict, add together the values associated with "Three" and "Five" and print the result.

print (someDict["Three"]! + someDict["Five"]!)

//var sum = 0
//for (key, value) in someDict where key != "One" {
//}
//print(sum)
//b) Add values to the dictionary for the keys "Six" and "Seven"
someDict.updateValue(36, forKey: "Six")
someDict.updateValue(49, forKey: "Seven")
print(someDict)

//c) Make a key caled "productUpToSeven" and set its value equal to the product of all the values
var productUpToSeven = 1
for value in someDict.values{
    productUpToSeven *= value
}
print(productUpToSeven)
//d) Make a key called "sumUpToSix" and set its value equal to the sum of the keys "One", "Two", "Three", "Four", "Five" and "Six"
someDict.updateValue( productUpToSeven, forKey: "productUpToSix")
//for sum in Array(someDict.keys) where someDict[sum]! != "Seven" {

//}
//e) Remove the new keys made for parts c and d

//f) Add 2 to every value inside of someDict
for (key, value) in someDict {
    someDict.updateValue(value+2, forKey: key)
}



//3)  (from http://www.themobilemontage.com/wp-content/uploads/2015/05/hw1.pdf)
//a) Create a variable that is explicitly typed as a dictionary that maps strings to floating point numbers. Initialize the variable to the data shown in the table below which lists an author name and their comprehensibility score.
/*
“Mark Twain” - 8.9
“Nathaniel Hawthorne” - 5.1
“John Steinbeck” - 2.3
“C.S. Lewis” - 9.9
“Jon Krakaur” - 6.1
*/

var comprehensibilityScore: [String:Float] = ["Mark Twain" : 8.9, "Nathaniel Hawthorne" : 5.1, "John Steinbeck" : 2.3, "C.S. Lewis" : 9.9, "Jon Krakaur" : 6.1]

//b) Using the dictionary created in the previous problem, do the following: Print out the floating-point score for “John Steinbeck”. Add an additional author named “Erik Larson” with an assigned score of 9.2.  Write an if/else statement that compares the score of John Krakaur with Mark  Twain. Print out the name of the author with the highest score.
let steinbeckRating = comprehensibilityScore["John Steinbeck"]
print(steinbeckRating)
comprehensibilityScore["Erik Larson"] = 9.2
let twainRating = comprehensibilityScore["Mark Twain"]
let krakaurRating = comprehensibilityScore["Jon Krakaur"]
if twainRating > krakaurRating {
    print("Mark Twain")
}else if twainRating < krakaurRating{
    print("Jon Krakaur")
}else{
    print("They are equal")
}
//c)  Use a for loop to iterate through the dictionary created in problem 3a and print out the content in the form of key: value, one entry per line.

for (authorName, rating) in comprehensibilityScore {
    print("\(authorName): \(rating)", terminator: "")
}



//4 -7 source :  https://www.weheartswift.com/dictionaries/)
//4)  
//4a)You are given a dictionary code of type [String:String] which has values for all lowercase letters. The code dictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a message which contains only lowercase letters and spaces. Use the code dictionary to encode the message and print it.

var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]

var message = "helloworld"

var endcodedString = ""
for c in message.characters {
    let a = code[String(c)]
        print (a)
    }
print(endcodedString)

//4b)
//You are also given a encodedMessage which contains only lowercase letters and spaces. Use the code dictionary to decode the message and print it.

var encodedMessage = "uijt nfttbhf jt ibse up sfbe"


//5)
//5a)You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.

var people: [[String:String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen"
    ]
]

let firstName = Array(people.keys)
print("\(firstName)")   

//5b) Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space.

//6)
//You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the best score and print his full name.


var peopleWithScores: [[String: String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": "13"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": "23"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": "10"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": "3"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": "16"
    ]
]

var firstNames = [String]()
for dict in people{
    if let first = dict["firstName"] {
    firstNames.append("first")
}
 }
print(firstNames)
/*6b) Print out the dictionary above in the following format:
full name - score
...
*/

//7)
//You are given an array of integers. Find out the frequency of each one.
//The frequency of a number is the number of times it appears in the array.
//Print the numbers in ascending order followed by their frequency.

var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]



//8)
//Print the most common letter in the string below:

var myString = "We're flooding people with information. We need to feed it through a processor. A human must turn information into intelligence or knowledge. We've tended to forget that no computer will ever ask a new question."


//9)
//Write code below that creates a dictionary where the keys are Ints in between 0 and 20 inclusive, and each key's value is its cube.



//10)
let statePop = ["Alabama": 4.8, "Alaska": 0.7, "Arizona": 6.7, "Arkansas": 3.0]
let testStates = ["California","Arizona", "Alabama", "New Mexico"]

//Write code below that iterates through testStates and prints out whether or not that key is in statePop