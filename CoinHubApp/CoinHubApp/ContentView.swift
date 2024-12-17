//
//  ContentView.swift
//  CoinHubApp
//
//  Created by Mehdi Javdaneh on 12/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
           TabView {
               DiscoverPageView()
                   .tabItem {
                       Label("Discover", systemImage: "magnifyingglass")
                   }
               
               WatchlistView()
                   .tabItem {
                       Label("Watchlist", systemImage: "eye")
                   }
           }
           .accentColor(.primary) 
       }
    
   }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
