//
//  ContentView.swift
//  LL3 Activity
//
//  Created by Zewdi's Mac on 7/14/25.
//

import SwiftUI
//Default view that gets created for me
struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.systemGray6)
                //Allows the color to be on the entire screen
                .ignoresSafeArea()
            
            //Alignment leading has content pushed to left hand side. Spacing gives content space between elements
            
            VStack(alignment: .leading, spacing: 20.0) {
                Image("sf")
                    .resizable()
                //Fits image to screen
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                HStack {
                    Text("San Francisco")
                        .font(.title)
                        .fontWeight(.bold)
                    //Spacer allows us to space elements apart.
                    //Although it doesnt have an outline, its the space between "San Franciso" and the stars
                    
                    Spacer()
                    
                    VStack {
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                           
                        }
                        
                        Text("(Reviews 400)")
                    }//Making the background color of the stars + review blue and shrinks the size of them
                    .foregroundStyle(.blue)
                    .font(.caption)
                }
                
                
                Text("Come visit SF for an experience of a lifetime.")
                
                HStack {
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }.foregroundColor(.gray)
                 .font(.caption)
               
                
            }
            //Gives us padding for our VStack
            .padding()
            
            //Allows us to specify a view for the background of our view
            .background(Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
                //Bug: Shadow isnt showing
                .shadow(radius:20))
   
            
            //Gives us space between the edges of the screen and the rectangle
            .padding()
        }
        
       
    }
}

#Preview {
    ContentView()
}
