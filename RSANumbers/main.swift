//
//  main.swift
//  RSA Numbers
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/rsa-numbers.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.
//
//  Test your solution to the puzzle using this plan:
//
//  https://www.russellgordon.ca/incomplete-puzzles/test-plan-rsa-numbers.pdf
//

import Foundation

print("RSA Numbers")
print("===========")

// INPUT

// Get lower limit of range

let lower = Int.collectInput(withPrompt: "Enter lower limit of range ", minimum: 0, maximum: nil)

// Get upper limit of range

let upper = Int.collectInput(withPrompt: "Enter upper limit of range ", minimum: 0, maximum: nil)

// PROCESS

// Count the number of divisors in the given Number
func countOfRSANumbersFrom(lower lowerNumber: Int, upper upperNumber: Int) -> Int {
    
    // 1 is always a divisor
    var divisorCount = 1
    var divisor4 = 0
    // Start looping from 2
    for j in lowerNumber...upperNumber {
        for i in 2...upperNumber {
            
            // What is the remainder?
            let remainder = j % i
            
            // DEBUG output...
            print("\(j) \\ \(i) has a remainder of \(remainder)")
            
            // TODO: Add some code here... we need to keep track of how many divisors there are
            if remainder == 0 {
                divisorCount += 1
            print(divisorCount)
            }

        }
        
        if divisorCount == 4 {
            divisor4 += 1
        }
    divisorCount = 1
    }
    // Return the count of divisors
    return divisor4
    
}

// How many divisors does a number have?
let RSANumbers = countOfRSANumbersFrom(lower: lower, upper: upper)
print("The number of RSA numbers between \(lower) and \(upper) is \(RSANumbers)")
