//
//  MovieDetailBusinessLogic.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

protocol MovieDetailBusinessLogic{
    /**
     Set interector movie value and call the presenter.
     
     - parameters:
     - movie: Movie.
     */
    func setMovie(movie: Movie)
}
