//
//  Recipe.swift
//  Recipe List App
//
//  Created by Gustavo Hernandez  on 3/30/23.
//

import Foundation

//Must comform to these protocols to as we will be using Lists and JSON Parsing
class Recipe: Identifiable, Decodable{
    
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var highlights:[String]
    var ingredients:[Ingredient]
    var directions:[String]
    
}

class Ingredient : Identifiable, Decodable {
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
    
}
