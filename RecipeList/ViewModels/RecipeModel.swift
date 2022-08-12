//
//  RecipeModel.swift
//  RecipeList
//
//  Created by Scott McNally on 09/08/2022.
//

import Foundation

class RecipeModel: ObservableObject{
    @Published var recipes = [Recipe]()
    
    init(){ 
        self.recipes = DataService.getLocalData()
    }
}
