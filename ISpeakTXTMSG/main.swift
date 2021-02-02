//
//  main.swift
//  I Speak TXTMSG
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/i-speak-txtmsg.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("I Speak TXTMSG")
print("==============")

// INPUT
while true {
// Ask for a phrase
print("Enter phrase> ", terminator: "")
let phrase = String.collectInput(withPrompt: "What is your phrase? ", acceptableValues: ["TA", "TTYL", "CU", ":-)", ":-(", ";-)", ":-P", "(˜.˜)", "CCC", "YW"])
//while phrase != "Goodbye" {
//    print("Enter phrase> ", terminator: "")
//    let phrase = readLine()!

// PROCESS
// Paramiters are inputs to the function
// Paramiters are separated by ","
// A paramiter has an external and internal name
// In this code translate has one paramiter
// the external name is "phrase"
// the internal name is "shortForm"
func translate(phrase shortForm: String) -> String {
    
        var Translation = ""
        
        // NOTE: Instead of an "if statement" consider using a different type of Swift structure to handle all the different possible cases...
        switch shortForm {
        case "TA":
            Translation = ("totally awesome")
        case "TTYL":
            Translation = ("talk to you later")
            break
        case "CU":
            Translation = ("see you")
        case ":-)":
            Translation = ("I'm happy")
        case ":-(":
            Translation = ("I'm unhappy")
        case ";-)":
            Translation = ("wink")
        case ":-P":
            Translation = ("stick my tongue out")
        case "(˜.˜)":
            Translation = ("sleepy")
        case "CCC":
            Translation = ("Canadian Cheese Champion")
        case "CUZ":
            Translation = ("because")
        case "TY":
            Translation = ("thank-you")
        case "YW":
            Translation = ("you’re welcome")
        default:
            return(shortForm)
        }
        return Translation
    }


// OUTPUT
// This is the call sight
// this is where the function is called or invocked
// the external name shows at the call site
// What we "pass in" for a paramiter is the argument
// Paramiter == question
let output = translate(phrase: phrase)
print(output)

    if output == "talk to you later"{
    break
    }
}
