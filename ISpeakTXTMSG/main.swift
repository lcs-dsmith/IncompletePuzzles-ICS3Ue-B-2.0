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

// Ask for a phrase
print("Enter phrase> ", terminator: "")
let phrase = readLine()!

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
        
        
        
        // NOTE: Instead of an "if statement" consider using a different type of Swift structure to handle all the different possible cases...
        switch shortForm {
        case "TA":
            return("totally awesome")
        case "TTYL":
            return("talk to you later")
        case "CU":
            return("see you")
        case ":-)":
            return("I'm happy")
        case ":-(":
            return("I'm unhappy")
        case ";-)":
            return("wink")
        case ":-P":
            return("stick my tongue out")
        case "(˜.˜)":
            return("sleepy")
        case "CCC":
            return("Canadian Cheese Champion")
        case "CUZ":
            return("because")
        case "TY":
            return("thank-you")
        case "YW":
            return("you’re welcome")
        case "totally awesome" :
            return("TA")
        case "talk to you later":
            return("TTYL")
        case "see you":
            return("CU")
        case "I'm happy":
            return(":-)")
        case "I'm unhappy":
            return(":-(")
        case "wink":
            return(";-)")
        case "stick my tongue out":
            return(":-P")
        case "sleepy":
            return("(˜.˜)")
        case "Canadian Computing Competition":
            return("CCC")
        case "because":
            return("CUZ")
        case "thank-you":
            return("TY")
        case "you’re welcome":
            return("YW")
        default:
            return(shortForm)
        }
        return shortForm
    }
    
    // OUTPUT
    // This is the call sight
    // this is where the function is called or invocked
    // the external name shows at the call site
    // What we "pass in" for a paramiter is the argument
    // Paramiter == question
    let output = translate(phrase: phrase)
    

