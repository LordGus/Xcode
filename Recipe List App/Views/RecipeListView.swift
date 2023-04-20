//
//  ContentView.swift
//  Recipe List App
//
//  Created by Gustavo Hernandez  on 3/28/23.
//

import SwiftUI

struct RecipeListView: View {
    
    
    //Reference view model
    //@ObservedObject will allow to listen and look for any changes in RecipeModel 
    @ObservedObject var model = RecipeModel()
    
    
    var body: some View {
        
        
        NavigationView {
            List(model.recipes){ r in
                
                NavigationLink {
                    RecipeDetailView(recipe: r)
                } label: {
                    HStack{
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height:50, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)

                    }

                }

                
                
            }
            .navigationTitle("All Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
