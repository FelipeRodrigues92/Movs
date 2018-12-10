//
//  UpcomingMoviePresenter.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit

class UpcomingMoviePresenter : UpcomingMovieListPresenterLogic{
    
    //ViewController of UpComingMovieListViewController. It's weak for ARC don't count more one reference
    weak var viewController : UpComingUpMovieFeedViews?
    
    func presentUpcomingMoviesResults(movies: [Movie]){
        var movieUnitArray: [UpcomingMovieUnitCellViewModel] = []
        for movie in movies {
            movieUnitArray.append(UpcomingMovieUnitCellViewModel.init(movie: movie))
        }
        viewController?.feedMovieListArray(with: movieUnitArray)
    }
}

