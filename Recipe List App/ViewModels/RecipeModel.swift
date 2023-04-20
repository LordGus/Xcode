//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Gustavo Hernandez  on 3/30/23.
//

import Foundation

class RecipeModel:ObservableObject{
    
    @Published var recipes = [Recipe]()
    
    init (){
        
        // Create instance of DataService and get the data
        self.recipes = DataService.getlocalData()
        
    }
    
}
