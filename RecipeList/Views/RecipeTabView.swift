//
//  RecipeTabView.swift
//  RecipeList
//
//  Created by Scott McNally on 13/08/2022.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView{
            Text("Feature View")
                .tabItem{
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            RecipeListView()
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("List")
                }
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
            .previewInterfaceOrientation(.portrait)
    }
}
