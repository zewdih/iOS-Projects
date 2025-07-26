//
//  ContentView.swift
//  War Card Game
//
//  Created by Zewdi's Mac on 7/20/25.
//

import SwiftUI

struct ContentView: View {
    
    //Declaring variables to store values
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                //HStack lays things side by side
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                
                Button {
                    //Where we put the code thats executed when we tap the button
                    deal()
                } label: {
                    //Where we put visual representation for the button
                    Image("button")
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        //We need to convert our integer, 'playerScore', to a string to pass it into the Text method
                        Text(String(playScore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    VStack {
                        //We need to convert our integer, 'cpuScore', to a string to pass it into the Text method
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundStyle(.white)
                Spacer()
               
            }
                
        }
    }
    
    
    func deal() {
        //Randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        var cpuCardValue = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardValue)
        
        //Randomize the cpus card
        cpuCard = "card" + String(cpuCardValue)
        
        //Update the score
        if playerCardValue > cpuCardValue {
            playScore += 1
        }
        else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
    }
    
}

#Preview {
    ContentView()
}
