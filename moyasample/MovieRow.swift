//
//  MovieRow.swift
//  moyasample
//
//  Created by Ney Moura on 26/02/20.
//  Copyright © 2020 Ney Moura. All rights reserved.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            Text(movie.title)
        }
    }
}

//struct MovieRow_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieRow(movie:
//            Movie(id: 0, title: "Sample data", images: MovieImages(landscape: "bla", portrait: nil, square: nil, clipped: nil), type: "TalentItem")
//        )
//    }
//}
