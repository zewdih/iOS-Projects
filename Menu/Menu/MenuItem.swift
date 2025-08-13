
//
//  MenuItem.swift
//  Menu
//
//  Created by Zewdi's Mac on 7/27/25.

//Were modeling a single generic menu item which is why we say MenuItem and NOT MenuItems
import Foundation

struct MenuItem:Identifiable {
    
    //We create a new instance of UUID with every object, so theyre each identifiable and make the list UI happy!
    //Having this line below is also part of the protocol needed for Identifiable (which tells the list UI each element unique)
    var id:UUID = UUID()
    
    var name:String
    //We want to include the currency symbol alongside our price, so we list the data type as a String and NOT a Double
    var price:String
    
    var imageName:String
    
}
