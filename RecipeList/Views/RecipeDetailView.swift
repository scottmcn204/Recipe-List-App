//
//  RecipeDetailView.swift
//  RecipeList
//
//  Created by Scott McNally on 10/08/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe:Recipe
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Image(recipe.image).resizable().scaledToFit()
                VStack(alignment: .leading) {
                    Text("Ingredients").font(.headline).padding([.bottom, .top], 5)
                    ForEach(recipe.ingredients){ item in
                        Text("➢ " + item.name).padding(1)
                    }
                }.padding([.leading, .trailing], 10)
                Divider()
                VStack(alignment: .leading){
                    Text("Directions").font(.headline).padding([.bottom,.top], 5)
                    ForEach(recipe.directions, id:\.self){ item in
                        Text("☞ " + item).padding(5)
                    }
                }.padding([.leading, .trailing], 10)
            }
        }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[1])
    }
}
