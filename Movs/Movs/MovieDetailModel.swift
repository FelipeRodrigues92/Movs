//
//  MovieDetailModel.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Foundation

struct MovieDetailModel {
    let overview: String
    let title: String
    let genreIds: [Int]
    let releaseDate : String
    let posterImagePath : String
    
    /**
     Initiate a data conteiner of MovieDetailModel type.
     
     - parameters:
     - movie: Movie.
     */
    init(movie: Movie){
        overview = movie.overview
        title = movie.title
        posterImagePath = movie.posterPath
        releaseDate = movie.releaseDate.toString(dateFormat: MOVIE_DATE_FORMATTER)
        genreIds = movie.genreIds
    }
}
