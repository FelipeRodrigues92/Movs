//
//  UpComingMovieListPresenter.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit

class UpcomingMovieListPresenter : UpcomingMovieListPresenterLogic{
    
    weak var viewController : UpComingUpMovieFeedViews?
    
    func presentUpcomingMoviesResults(movies: [Movie]){
        var movieUnitArray: [UpcomingMovieUnitCellViewModel] = []
        for movie in movies {
            movieUnitArray.append(UpcomingMovieUnitCellViewModel.init(movie: movie))
        }
        viewController?.feedMovieListArray(with: movieUnitArray)
    }
}

