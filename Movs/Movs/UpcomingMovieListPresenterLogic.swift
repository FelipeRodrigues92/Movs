//
//  UpcomingMovieListPresenterLogic.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//


protocol UpcomingMovieListPresenterLogic {
    /**
     Call back the viewController passing corrects datas(arrray of Movie).
     
     - parameters:
     - movies: [Movie].
     */
    func presentUpcomingMoviesResults(movies: [Movie])
}

