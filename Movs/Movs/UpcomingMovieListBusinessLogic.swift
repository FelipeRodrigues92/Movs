//
//  UpcomingMovieListBusinessLogic.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//


protocol UpcomingMovieListBusinessLogic{
    func fecthUpComingMovies(for page: Int)
    func setMovie(with movie: Int)
}
