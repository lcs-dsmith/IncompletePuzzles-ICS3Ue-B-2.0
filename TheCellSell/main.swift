//
//  main.swift
//  TheCellSell
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/the-cell-sell.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.
//
//  Test your solution to the puzzle using this plan:
//
//  https://www.russellgordon.ca/incomplete-puzzles/test-plan-the-cell-sell.pdf
//

import Foundation

print("The Cell Sell")
print("=============")

while true {
    // INPUT
    
    // Get daytime minutes
    //print("Number of daytime minutes?")
    let day = Int.collectInput(withPrompt: "Number of daytime minuits ", minimum: 1, maximum: nil)
    
    // Get evening minutes
    //print("Number of evening minutes?")
    let evening = Int.collectInput(withPrompt: "Number of nightime minuits ", minimum: 1, maximum: nil)
    
    // Get weekend minutes
    //print("Number of weekend minutes?")
    let weekend = Int.collectInput(withPrompt: "Number of weekend minuits ", minimum: 1, maximum: nil)
    
    // INPUT
    
    // PROCESS
    //
    // NOTE: To unit test logic you have written, it must be encapsulated (described) within a function.
    
    func compareCosts(day: Int, evening: Int, weekend: Int) -> String {
        
        // Calculate cost for plan A
        var a = 0
        
        // Add daytime cost
        if day > 100 {
            a += (day - 100) * 25
        }
        
        // Add evening cost
        a += evening * 15
        
        // Add weekend cost
        a += weekend * 20
        
        // Calculate cost for plan B
        var b = 0
        
        // Add daytime cost
        if day > 250 {
            b += (day - 250) * 45
        }
        
        // Add evening cost
        b += evening * 35
        
        // Add weekend cost
        b += weekend * 25
        
        // Build the result to be returned
        var result = ""
        
        result += "Plan A costs \(a)\n"
        result += "Plan B costs \(b)\n"
        
        if a > b {
            result += "Plan B is cheapest."
        } else if a == b {
            result += "Plans A and B are the same price."
        } else {
            result += "Plan A is cheapest."
        }
        
        // Return the result
        return result
        
    }
    
    // OUTPUT
    //
    // Invoke the new function to get result and print it to the screen
    let output = compareCosts(day: day,
                              evening: evening,
                              weekend: weekend)
    print(output)
    
    // check if you want to try again
    let continueYesOrNO = String.collectInput(withPrompt: "Would you like to calculate again yes or no? ", acceptableValues: ["yes", "no"])
    if continueYesOrNO == "no" {
        break
    } else {
        continue
    }
}
