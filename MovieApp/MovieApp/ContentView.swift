//
//  ContentView.swift
//  MovieApp
//
//  Created by Moneerah Alajmi on 8/27/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        NavigationView {
            List{
                    ForEach(MyMovies){movie in
                       
                        
                        NavigationLink (destination: {
                            Details(ourmovie: movie)
                        }, label: {
                            RowView(movie: movie.moviename)
                        })

                        
                }.navigationTitle("Movies")
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


