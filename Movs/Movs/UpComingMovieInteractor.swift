//
//  UpComingMovieInteractor.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit

class UpcomingMovieInteractor: UpcomingMovieBusinessLogic, UpcomingMovieListDataStore{
    
    var movie: Movie?
    
    var presenter: UpcomingMovieListPresenterLogic?
    let moviesWorker = UpComingMovieListMoyaGateway()
    
    var page : Int = 0
    var moviesArray : [Movie] = []
    
    func fecthUpComingMovies(for page: Int) {
        moviesWorker.fecthUpComingMovies(page: page) { [weak self] result in
            guard let strongSelf = self else {return}
            if case let .success(movies) = result {
                guard let presenter = strongSelf.presenter else {return}
                presenter.presentUpcomingMoviesResults(movies: movies)
                strongSelf.addNewMovies(movies: movies, newPage: page)
            } else {/*do nothing*/}
        }
    }
    
    func setMovie(with index: Int){
         self.movie = moviesArray[index]
    }
    
    private func addNewMovies(movies : [Movie], newPage: Int){
        if (newPage > self.page){
            moviesArray.append(contentsOf: movies)
            self.page = newPage
        }
    }
}
