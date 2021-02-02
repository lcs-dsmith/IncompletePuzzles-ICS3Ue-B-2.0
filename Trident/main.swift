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

while true {
    // INPUT
    
    // Get tine length
    
    let T = Int.collectInput(withPrompt: "Enter tine length: ", minimum: 1, maximum: nil)
    
    
    // Get tine spacing
    let S = Int.collectInput(withPrompt: "Enter tine spacing: ", minimum: 1, maximum: nil)
    
    
    // Get handle length
    let H = Int.collectInput(withPrompt: "Enter Handle Length: ", minimum: 1, maximum: nil)
    
    
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
    
    //Check if you want to go again
    let continueYesOrNO = String.collectInput(withPrompt: "Would you like to continue yes or no? ", acceptableValues: ["yes", "no"])
    if continueYesOrNO == "no" {
        break
    } else {
        continue
    }
}
