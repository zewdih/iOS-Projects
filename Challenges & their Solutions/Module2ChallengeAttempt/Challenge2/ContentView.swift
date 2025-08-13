//
//  ContentView.swift
//  Challenge2
//
//  Created by Zewdi's Mac on 8/11/25.
//

import SwiftUI

struct ContentView: View {
    //You use @State when: The data is stored in your view, can change, and you want SwiftUI to automatically redraw the screen when it changes.
    //Line 13 is creating an empty list in memory, with no elements yet
    @State var listItemsArray:[ListItem] = []
    
    var body: some View {
        
        ZStack {
            
            //Adds the background color of the app
            Color(UIColor.systemGroupedBackground)
                         .ignoresSafeArea()
            
            VStack {
            
               List(listItemsArray) { item in
                    Text(item.name)
                }
                Button {
                    randomWord()
                } label: {
                    //Where we put visual representation for the button
                    Image("button")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height:160)
                }
            }
  
        }
    }
    
    func randomWord() {
        let words = ["Hello", "World", "Zewdi", "Loves", "Swift"]
        //If the array is not empty...
        if !words.isEmpty {
            //Obtains a random element from the words array
            let randomWord = words.randomElement()!
            let newItem = ListItem(name: randomWord)
            listItemsArray.append(newItem)
        }
    }
    
}

#Preview {
    ContentView()
}
