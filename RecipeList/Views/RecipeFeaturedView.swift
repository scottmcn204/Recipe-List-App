//
//  RecipeFeaturedView.swift
//  RecipeList
//
//  Created by Scott McNally on 14/08/2022.
//

import SwiftUI

struct RecipeFeaturedView: View {
    @EnvironmentObject var model:RecipeModel
    var body: some View {
        Text(model.recipes[0].name)
    }
}

struct RecipeFeaturexView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
    }
}
