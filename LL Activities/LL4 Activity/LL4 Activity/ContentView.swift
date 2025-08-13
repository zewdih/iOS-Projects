//
//  ContentView.swift
//  LL4 Activity
//
//  Created by Zewdi's Mac on 7/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemGreen)
                .ignoresSafeArea()
                .opacity(20)
            VStack {
                
                Image("logo").padding(35)
                HStack {
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }

                Image("button").padding(40)
                
                HStack {
                   Spacer()
                    Text("Player")
                    Spacer()
                    Text("CPU")
                    Spacer()
                }.foregroundColor(.white)
                 .fontWeight(.bold)
      
                HStack {
                    Spacer()
                    Text("0")
                    Spacer()
                    Text("0")
                    Spacer()
                }.foregroundColor(.white)
                 .padding(10)
                 .fontWeight(.light)
                 .font(.system(size: 40))
            }
        }
    }
}

#Preview {
    ContentView()
}
