//
//  UpComingMovieListGateway.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//
protocol UpComingMovieListGateway{
    func fecthUpComingMovies(page: Int, _ completion: @escaping (Result<[Movie]>) -> ())
}
