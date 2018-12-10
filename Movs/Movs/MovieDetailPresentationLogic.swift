//
//  File.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

protocol MovieDetailPresentationLogic{
    /**
     Call back the viewController passing corrects datas(Movie).
     
     - parameters:
     - movie: Movie.
     */
    func presentMovieDetailResult(with movie: Movie)
}
