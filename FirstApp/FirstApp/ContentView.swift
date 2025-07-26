//
//  ContentView.swift
//  FirstApp
//
//  Created by Zewdi's Mac on 7/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //Z-Stack has things sit on top of each other via depth
        
        ZStack {
            Color(.lightGray)
                .ignoresSafeArea()
            
            //V-Stack aligns elements vertically
            
            VStack {
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                //To add color to the background, we need a color element
                Image("tea")
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Text("Cold Brew Tea")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
            }
        }
    }
}

#Preview {
    ContentView()
}
