//
//  UpComingMovieListRouter.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//
import Foundation

class UpComingMovieListRouter : UpComingMovieListRoutingLogic, UpComingMovieListPassingData{
    
    var dataStore: UpComingMovieListDataStore?
    
    weak var viewController: UpComingMovieViewController?
    
    func routeToMovieDetail() {
        
        if let movie = dataStore?.movie, let upComingMovieListViewController = viewController {
            let movieDetailViewController = MovieDetailViewController(movie: movie)
            upComingMovieListViewController.show(movieDetailViewController,sender: nil)
        }
    }
    
    
}
