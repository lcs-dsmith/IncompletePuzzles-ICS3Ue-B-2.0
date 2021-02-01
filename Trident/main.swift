//
//  main.swift
//  Trident
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/trident.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Trident")
print("=======")

// INPUT

// Get tine length
print("Enter tine length:")
print("   ", terminator: "")
let T = Int(readLine()!)!

// Get tine spacing
print("Enter tine spacing:")
print("   ", terminator: "")
let S = Int(readLine()!)!

// Get handle length
print("Enter Handle Length:")
print("   ", terminator: "")
let H = Int(readLine()!)!

// PROCESS
func drawTrident(tineLength T: Int,
                 tineSpacing S: Int,
                 handleLength H: Int) -> String {
    //Create a variabe name for output
    var output = ""
    
    for _ in 1...T {
        
        // Draw first line of all tines
        for _ in 1...3 {
            output += "*"

            
            for _ in 1...S {
                output += " "
            }
        }
        
        // Row compleate .. next line
        // The \n character sequence
        // pushes the content down to the next line
        output += "\n"
    }
    // Draw the Haft
    for _ in 1...3 + S + S  {
        output += "*"
    }
    //go to next line
    output += "\n"

    // Draw the handle
    for _ in 1...H {
        for _ in 1...1+S {
            output += " "
            
        }
        output += "*"
        output += "\n"
    }
    return output
}

let programOutput = drawTrident(tineLength: T, tineSpacing: S, handleLength: H)
print(programOutput)
// OUTPUT
//
//
//// Produce top of trident according to length given
//for _ in 1...T {
//    // Print the tines
//    for _ in 1...3 {
//
//        // Print part of a tine
//        print("*", terminator: "")
//
//        // Print space between tines
//        for _ in 1...S {
//            print(" ", terminator: "")
//        }
//
//    }
//    // Go to next line of output
//    print("")
//}
//
//
// Draw all tines
//
//
//
// Draw first line of all three tines with space between them
//for _ in 1...3 {
//    print("*", terminator: "")
//
//    for _ in 1...S {
//
//        print("s", terminator: "")
//    }
//}
//
// Draw th tines with the spaces
//    for _ in 1...3 {
//        print("*", terminator: "")
//
//        for _ in 1...S {
//
//            print("s", terminator: "")
//        }
//    }
