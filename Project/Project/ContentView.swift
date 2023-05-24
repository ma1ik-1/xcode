//
//  ContentView.swift
//  Project
//
//  Created by Malik on 24/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .home
    enum Tab {
        case home
        case search
        case watchlist
    }
    
    var body: some View {
        TabView(selection: $selection) {
            //page name
            HomeView()
            .tabItem{
                Label("Home", systemImage: "house")
            }
            .tag(Tab.home)
            SearchView()
                .tabItem{
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag(Tab.search)
            WatchListView()
                .tabItem{
                    Label("Watch list", systemImage: "bookmark")
                }
                .tag(Tab.watchlist)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
