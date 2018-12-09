//
//  MovieListRouter.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Foundation

class UpComingMovieListRouter : UpComingMovieListRoutingLogic, UpComingMovieListPassingData{
    
    weak var viewCotroller: UpComingMovieViewController?
    var dataStore: MovieListDataStore?
    
    func routeToMovieDetail() {
        if let movie = dataStore?.movie, let upComingMovieListViewController = viewCotroller {
            let movieDetailViewController = MovieDetailViewController(movie: movie)
            upComingMovieListViewController.show(movieDetailViewController,sender: nil)
        }
    }
    
    
}
