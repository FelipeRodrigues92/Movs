//
//  MovieDetailPresenter.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit

class MovieDetailPresenter : MovieDetailPresentationLogic{
    
    ///ViewController of MovieDetailViewController. It's weak for ARC don't count more one reference
    weak var viewController : MovieDetailFeedView?
    
    func presentMovieDetailResult(with movie: Movie) {
        let movieDetailModel = MovieDetailModel(movie: movie)
        if let viewController = self.viewController {
            viewController.feedMovieDetailView(with: movieDetailModel)
        }
    }
    
}
