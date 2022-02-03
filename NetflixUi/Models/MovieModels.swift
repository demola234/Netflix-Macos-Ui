//
//  MovieModels.swift
//  NetflixUi
//
//  Created by Oluwasegun Kolawole Ademola on 08/01/2022.
//

import Foundation

struct MovieModels: Identifiable, Hashable {
    var id = UUID().uuidString
    var image: String
}


var movie = [
    MovieModels(image: "movie1"),
    MovieModels(image: "movie2"),
    MovieModels(image: "movie3"),
]
