//
//  Functions.swift
//  IncompletePuzzles
//
//  Created by Dylan Smith on 2021-02-22.
//

import Foundation

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


