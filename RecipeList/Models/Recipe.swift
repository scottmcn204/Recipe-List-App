//
//  Recipe.swift
//  RecipeList
//
//  Created by Scott McNally on 09/08/2022.
//

import Foundation

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
    var ingredients:[Ingredient]
    var directions:[String]
    var highlights:[String]
}

class Ingredient: Identifiable, Decodable{
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
}
