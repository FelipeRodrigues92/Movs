//
//  UpComingMovieListRouter.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//
import Foundation

class UpcomingMovieListRouter : UpcomingMovieListRoutingLogic, UpcomingMovieListDataPassing{
    
    
    var dataStore: UpcomingMovieListDataStore?
    
    weak var viewController: UpComingMovieViewController?
    
    func routeToMovieDetail() {
        
        if let movie = dataStore?.movie, let upcomingMovieListViewController = viewController {
            let movieDetailViewController = MovieDetailViewController(movie: movie)
            upcomingMovieListViewController.show(movieDetailViewController,sender: nil)
        }
    }
    
    
}
