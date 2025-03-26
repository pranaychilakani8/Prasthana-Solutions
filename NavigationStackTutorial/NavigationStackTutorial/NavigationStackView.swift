//
//  NavigationStackView.swift
//  NavigationStackTutorial
//
//  Created by Pranay on 18/03/25.
//

import SwiftUI

import SwiftUI

struct NavigationStackView: View {
    
    @State private var path = NavigationPath()
    
    var series: [Series] = [
        Series(name: "The Family Man", rating: 8.0),
        Series(name: "Game of Thrones", rating: 9.2),
        Series(name: "The Social Network", rating: 9.5),
        Series(name: "Evil Dead", rating: 9.8)
    ]
    
    var movies: [Movies] = [
        Movies(name: "Star Wars"),
        Movies(name: "Titanic"),
        Movies(name: "Avengers"),
        Movies(name: "Final Destination")
    ]
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                // Section 1: Series
                Section("Series") {
                    ForEach(series) { serie in
                        NavigationLink(serie.name, value: serie)
                    }
                }
                
                // Section 2: Movies
                Section("Movies") {
                    ForEach(movies) { movie in
                        NavigationLink(movie.name, value: movie)
                    }
                }
            }
            .navigationTitle("Entertainment")
            
            // Destination for Series
            .navigationDestination(for: Series.self) { series in
                VStack {
                    Text(series.name)
                        .font(.title)
                    Text("Rating: \(series.rating, specifier: "%.1f")")
                        .font(.subheadline)
                }
                .padding()
            }
            
            .navigationDestination(for: Movies.self) { movie in
                VStack {
                    Text(movie.name)
                        .font(.title)
                    Text("Movie Details Coming Soon!")
                        .font(.subheadline)
                }
                .padding()
            }
        }
        Text("Numbers of views in the stack : \(path.count)")
    }
}

#Preview {
    NavigationStackView()
}
