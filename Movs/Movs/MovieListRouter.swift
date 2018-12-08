//
//  MovieListRouter.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Foundation

class MovieListRouter : MovieListRoutingLogic, MovieListPassingData{
    
    weak var viewCotroller: MovieDetailViewController?
    var dataStore: MovieListDataStore?
    
    func routeToMovieDetail() {
        if let movie = dataStore?.movie, let movieDetailViewController = viewCotroller {
            let movieDetailViewController = MovieDetailViewController(movie: movie)
            movieDetailViewController.show(movieDetailViewController,sender: nil)
        }
    }
    
    
}
