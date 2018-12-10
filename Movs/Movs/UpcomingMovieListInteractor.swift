//
//  UpcomingMovieListInteractor.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 09/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit

class UpcomingMovieListInteractor: UpcomingMovieListBusinessLogic, UpcomingMovieListDataStore{
    
    var movie: Movie?
    
    var presenter: UpcomingMovieListPresenterLogic?
    let moviesWorker = UpComingMovieListMoyaGateway()
    
    var page : Int = 0
    var moviesArray : [Movie] = []
    
    ///Calling woking to get a array of movies by the API.
    func fecthUpComingMovies(for page: Int) {
         ///Call the woking completion to get a array of movies by the API. It's weak for ARC don't count more one reference.
        moviesWorker.fecthUpComingMovies(page: page) { [weak self] result in
            guard let strongSelf = self else {return}
            if case let .success(movies) = result {
                guard let presenter = strongSelf.presenter else {return}
                presenter.presentUpcomingMoviesResults(movies: movies)
                strongSelf.addNewMovies(movies: movies, newPage: page)
            } else {/*do nothing*/}
        }
    }
    /**
     Set a movie to this interactor dataStore.
     - parameters:
     - movies : [Movie], newPage: Int
     */
    func setMovie(with index: Int){
        self.movie = moviesArray[index]
    }
    /**
    If are more new movies caming from API increment page index and array of movies.
     - parameters:
     - movies : [Movie], newPage: Int
     */
    private func addNewMovies(movies : [Movie], newPage: Int){
        if (newPage > self.page){
            moviesArray.append(contentsOf: movies)
            self.page = newPage
        }
    }
}
