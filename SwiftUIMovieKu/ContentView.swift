//
//  ContentView.swift
//  SwiftUIMovieKu
//
//  Created by Abdhi on 03/06/20.
//  Copyright © 2020 Abdhilabs. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MovieListView()
                .tabItem{
                    VStack{
                        Image(systemName: "tv")
                        Text("Movies")
                    }
            }
            .tag(0)
            
            MovieSearchView()
                .tabItem{
                    VStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
