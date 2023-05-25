//
//  MovieDetail.swift
//  Project
//
//  Created by Malik on 25/05/2023.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
//    var movieIndex: Int {
//        //movieData.movies.firstIndex(where: { $0.id == movie.id })!
//    }
    var body: some View {
        ScrollView {
            //imageView
            CircleImage(image: movie.image)
                
            VStack(alignment: .leading) {
                HStack {
                    Text(movie.Title)
                        .font(.title2)
                }
                HStack {
                    Text("Runtime: " + movie.Runtime)
                    Spacer()
                    Text("Released " + movie.Released)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text(movie.Rated)
                    .font(.title2)
                Text(movie.Plot)
            }
            .padding()
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: ModelData().movies[0])
    }
}
