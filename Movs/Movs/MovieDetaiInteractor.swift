//
//  MovieDetaiInteractor.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit

class MovieDetailInteractor: MovieDetailBusinessLogic{
    
    var movie: Movie?
    
    var presenter : MovieDetailPresentationLogic?
    
    func setMovie(movie: Movie) {
        self.movie = movie
        if let presenter = self.presenter {
            presenter.presentMovieDetailResult(with: movie)
        }else{
          /**DoNothing*/
        }
    }
    
    
}
