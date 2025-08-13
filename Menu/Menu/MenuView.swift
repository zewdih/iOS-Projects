//
//  MenuView.swift
//  Menu
//
//  Created by Zewdi's Mac on 7/26/25.
//

import SwiftUI

//Changing ConstructView to MenuView to provide relevant context to the project were making

struct MenuView: View {
    
    var menuItemsArray:[MenuItem] = [MenuItem(name: "Onigiri", price: "1.99", imageName: "onigiri"),
                                      MenuItem(name: "Meguro Sushi", price: "5.99", imageName: "meguro-sushi"),
                                      MenuItem(name: "Tako Sushi", price: "4.99", imageName: "tako-sushi"),
                                      MenuItem(name: "Avocado Maki", price: "2.99", imageName: "avocado-maki"),
                                      MenuItem(name: "Tobiko Spicy Maki", price: "4.99", imageName: "tobiko-spicy-maki"),
                                      MenuItem(name: "Salmon Sushi", price: "4.99", imageName: "salmon-sushi"),
                                      MenuItem(name: "Hamachi Sushi", price: "6.99", imageName: "hamachi-sushi"),
                                      MenuItem(name: "Kani Sushi", price: "3.99", imageName: "kani-sushi"),
                                      MenuItem(name: "Tamago Sushi", price: "3.99", imageName: "tamago-sushi"),
                                      MenuItem(name: "California Roll", price: "3.99", imageName: "california-roll"),
                                      MenuItem(name: "Shrimp Sushi", price: "3.99", imageName: "shrimp-sushi"),
                                      MenuItem(name: "Ikura Sushi", price: "5.99", imageName: "ikura-sushi")]

    
    var body: some View {
        //List keyword intializes the list; each item in the array is type, 'MenuItem'
        List(menuItemsArray) { item in
            
            
            
            HStack {
                
                //Image function displays images
                Image(item.imageName)
                    //.resizable allows image to grow or shrink
                    .resizable()
                    //.aspectRatio is going to fit the image into the space specified
                    .aspectRatio(contentMode: .fit)
                    //.frame allows me to control the height of the image
                    .frame(height: 50)
                    //Rounds the corners
                    .cornerRadius(10)
                
                Text(item.name)
                    .bold()
                //Literally is the white space between whatever its placed
                
                Spacer()
                
                Text("$" + item.price)
            }
            //Removes the divider lines per row
            .listRowSeparator(.hidden)
            //Makes background of the rows of the list a light brown
            .listRowBackground(
                Color(.brown)
                      .opacity(0.1))
            
            
        }
        
        //List modifier that makes our list plain so we can style it ourselves
        .listStyle(.plain)
            
    }
}

//Generates the preview on the right hand side
#Preview {
    MenuView()
}
