//
//  DataService.swift
//  Recipe List App
//
//  Created by Gustavo Hernandez  on 3/30/23.
//

import Foundation


class DataService{
    
    static func getlocalData() -> [Recipe]{
        
        // Parse local JSON file
        
        //get URL path to JSON file
        //check for nil
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        //Check if pathString != nil ... otherwise ...
        guard pathString != nil else{
            return [Recipe]()
        }
        
        //Create a URL object
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            //Create data object
            let data = try Data(contentsOf: url)
            
            //decode data object with decoder
            let decoder = JSONDecoder()
            
            do{
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                //Add unique ID
                for r in recipeData{
                    r.id = UUID()
                }
                
                // return the recipes
                return recipeData
            }
            catch{
                print(error)
            }
            
        }
        catch{
            print(error)
        }
        // return empty array of recippes 
        return [Recipe]()
    }

    
    
}
