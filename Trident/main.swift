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


// OUTPUT

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
for _ in 1...T {
    
    // Draw first line of all tines
    for _ in 1...3 {
        print("*", terminator: "")
        
        for _ in 1...S {
            
            print(" ", terminator: "")
        }
    }
    
    // Row compleate .. next line
    // The \n character sequence
    // pushes the content down to the next line
    print("\n", terminator: "")
}
// Draw the Haft
for _ in 1...3 + S + S  {
    print("*", terminator: "")
}
//go to next line
print("\n", terminator: "")

// Draw the handle
for _ in 1...4 {
    for _ in 1...1+S {
        print(" ",terminator: "")
    }
    print("*")
}


// Draw first line of all three tines with space between them
//for _ in 1...3 {
//    print("*", terminator: "")
//
//    for _ in 1...S {
//
//        print("s", terminator: "")
//    }
//}

// Draw th tines with the spaces
//    for _ in 1...3 {
//        print("*", terminator: "")
//
//        for _ in 1...S {
//
//            print("s", terminator: "")
//        }
//    }
