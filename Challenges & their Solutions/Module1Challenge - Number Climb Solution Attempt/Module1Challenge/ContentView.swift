//
//  ContentView.swift
//  Module1Challenge
//
//  Created by Zewdi's Mac on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var numberCounter = 0
    
    var body: some View {
        
        
        VStack {
            
            Text(String(numberCounter))
                .font(.largeTitle)
            
            Button("Tap Me!") {
               //Code for button
                increase()
            }
        }
        
    }
        
    
    func increase() {
        //Adds a random number between 1 and 10
        numberCounter += Int.random(in: 1...10)
        
        //If the number displayed goes over 50, the button should start calling the decrease() function.
        if numberCounter >= 50 {
            decrease()
        }
     
        
    }
    
    func decrease() {
        //Subtracts a random number between 1 and 10
        numberCounter -= Int.random(in: 1...10)
        
       //When the number displayed goes below 0, the button should revert to calling the increase() function.
        if  50 >= numberCounter || 0 >= numberCounter {
            increase()
        }
    }
    
}

#Preview {
    ContentView()
}
