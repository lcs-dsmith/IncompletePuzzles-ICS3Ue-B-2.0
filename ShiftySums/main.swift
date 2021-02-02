//
//  main.swift
//  Shifty Sums
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/shifty-sums.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Shifty Sums")
print("===========")

// INPUT
while true {
    // Get the number to be shifted
    let n = Int.collectInput(withPrompt: "What is your base?  ", minimum: 1, maximum: nil)
    
    // How many times should we shift?
    let k = Int.collectInput(withPrompt: "What is your shift?  ", minimum: 0, maximum: nil)
    
    
    // PROCESS
    func shift(n:Int, k: Int) -> Int {
        var output = n
        if k != 0{
            for i in 1...k {
                var toAdd = n
                for _ in 1...i {
                    toAdd *= 10
                }
                output += toAdd
            }
        } else {
            output = n
        }
        return output
        
    }
    let answer = shift(n: n, k: k)
    print("Your answer is ")
    print(answer)
    // Shift the given number "k" number of times
    //var output = n
    //output += n * 10
    //output += n * 10 * 10
    //output += n * 10 * 10 * 10
    
    // OUTPUT
    //print(output)
    let continueYesOrNO = String.collectInput(withPrompt: "Would you like to continue yes or no? ", acceptableValues: ["yes", "no"])
    if continueYesOrNO == "no" {
        break
    } else {
        continue
    }
}
