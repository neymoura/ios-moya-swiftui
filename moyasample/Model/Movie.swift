//
//  Movie.swift
//  moyasample
//
//  Created by Ney Moura on 25/02/20.
//  Copyright © 2020 Ney Moura. All rights reserved.
//

struct Movie: Decodable {
    let id: Int
    let title: String
    let images: MovieImages
    let type: String
}

//{
//    "id": 790429,
//    "title": "Homem de Ferro",
//    "images": {
//        "landscape": "http://netb.tmsimg.com//assets/p170620_v_h2_am.jpg",
//        "portrait": "http://clarovideocdn1.clarovideo.net//assets/p170620_v_h2_am.jpg?size=290x163",
//        "square": null,
//        "clipped": null
//    },
//    "type": "ContentItem"
//}
