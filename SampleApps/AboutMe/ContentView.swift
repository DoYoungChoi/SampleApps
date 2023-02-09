//
//  ContentView.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/09.
//

import SwiftUI

struct AboutMeContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "person")
                }

            StoryView()
                .tabItem {
                    Label("Story", systemImage: "book")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
            
            FunFactsView()
                .tabItem {
                    Label("Fun Facts", systemImage: "hand.thumbsup")
                }
        }
    }
}

struct AboutMeContentView_Previews: PreviewProvider {
    static var previews: some View {
        AboutMeContentView()
    }
}
