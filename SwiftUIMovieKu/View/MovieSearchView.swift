//
//  MovieSearchView.swift
//  SwiftUIMovieKu
//
//  Created by Abdhi on 04/06/20.
//  Copyright © 2020 Abdhilabs. All rights reserved.
//

import SwiftUI

struct MovieSearchView: View {
    
    @ObservedObject var movieSearchState = MovieSearchState()
    
    var body: some View {
        NavigationView {
            List {
                SearchBarView(placeHolder: "Search movies", text: self.$movieSearchState.query)
                    .listRowInsets(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                
                LoadingView(isLoading: self.movieSearchState.isLoading, error: self.movieSearchState.error){
                    self.movieSearchState.search(query: self.movieSearchState.query)
                }
                
                if self.movieSearchState.movie != nil {
                    ForEach(self.movieSearchState.movie!) { movie in
                        NavigationLink(destination: MovieDetailView(movieId: movie.id)){
                            VStack(alignment: .leading){
                                Text(movie.title)
                                Text(movie.yearText)
                            }
                        }
                    }
                }
            }
            .onAppear {
                self.movieSearchState.startObserve()
            }
            .navigationBarTitle("Search")
        }
    }
}

struct MovieSearchView_Previews: PreviewProvider {
    static var previews: some View {
        MovieSearchView()
    }
}
