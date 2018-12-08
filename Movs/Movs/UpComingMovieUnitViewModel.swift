//
//  UpComingMovieUnitViewModel.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 07/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit
import Kingfisher

struct UpComingMovieUnitViewModel {
    let title: String
    let releaseDate : String
    let posterImage : String
    
    init(movie: Movie){
        title = movie.title
        posterImage = movie.posterPath
        releaseDate = movie.releaseDate.toString(dateFormat: MOVIE_DATE_FORMATTER)
    }
    
}
