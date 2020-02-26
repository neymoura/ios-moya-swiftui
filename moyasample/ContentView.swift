//
//  ContentView.swift
//  moyasample
//
//  Created by Ney Moura on 25/02/20.
//  Copyright © 2020 Ney Moura. All rights reserved.
//

import SwiftUI
import Moya

struct ContentView: View {
    
    @State var movieData: [Movie]
    
    var body: some View {
        VStack {
            Button(action: {
                self.fetchData()
            }) {
                Text("Fetch some movies data")
            }
            List(movieData, id: \.id) { movie in
                MovieRow(movie: movie)
            }
        }
    }
    
    func fetchData() {
        let provider = MoyaProvider<MovieService>()
        provider.request(.list) { result in
            switch result {
            case let .success(Response):
                do {
                    let data = try Response.filterSuccessfulStatusCodes()
                    let movies = try data.map(Array<Movie>.self)
                    movies.forEach { (movie) in
                        print(movie.id)
                    }
                    self.movieData = movies
                } catch let error {
                    print(error)
                }
            case .failure(let moyaError):
                print(moyaError.errorDescription!)
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(movieData: [Movie(id: 0, title: "Sample data", images: MovieImages(landscape: "bla", portrait: nil, square: nil, clipped: nil), type: "TalentItem")])
    }
}
