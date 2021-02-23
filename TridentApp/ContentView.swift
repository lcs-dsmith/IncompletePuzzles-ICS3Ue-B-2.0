//
//  ContentView.swift
//  TridentApp
//
//  Created by Dylan Smith on 2021-02-22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tineLength: String = ""
    @State private var tineSpacing: String = ""
    @State private var handleLength: String = ""
    
    
    private var output: String {
        guard let providedTineLength = Int(tineLength) else {
            return "Please provide an integer value."
        }
        guard let providedTineSpacing = Int(tineSpacing) else {
            return "Please provide an integer value."
        }
        guard let providedHandleLength = Int(handleLength) else {
            return "Please provide an integer value."
        }
        
    }
    var body: some View {
        
        NavigationView{
        
            Form {
                Section(header: Text("What is your tine Legngth?")) {
                    TextField("e.g.: 5", text: $tineLength)
                }
                Section(header: Text("What is your tine spacing")) {
                    TextField("e.g.: 5", text: $tineSpacing)
                        }
                Section(header: Text("What is your handle Legngth?")) {
                    TextField("e.g.: 5", text: $handleLength)
                        }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
