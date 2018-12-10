//
//  UpcomingMovieListInteractorSpec.swift
//  MovsTests
//
//  Created by Felipe Rodrigues Silva on 09/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Quick
import Nimble

@testable import Movs

class UpcomingMovieListInteractorSpec : QuickSpec{
    
    override func spec() {
        describe("UpcomingMovieListInteractor Spec"){
            
            context("when initialize"){
                var upcomingMovieListInteractor : UpcomingMovieListInteractor!
                
                beforeEach {
                    upcomingMovieListInteractor = UpcomingMovieListInteractor()
                    upcomingMovieListInteractor.fecthUpComingMovies(for: 01)
                }
                it("page value is not negative"){
                    expect(upcomingMovieListInteractor.page >= 0).to(beTrue())
                }
    
                context("getting movie from array"){
                    var movie : Movie!
                    beforeEach {
                        
                        movie = Movie(id: 03, genreIds: [18], title: "teste the movie", overview: "I'm testing this", releaseDate: Date(timeIntervalSinceNow: 1), posterPath: "/fosdkfsdf.png"); upcomingMovieListInteractor.moviesArray = [movie]
                        upcomingMovieListInteractor.setMovie(with: 0)
                    }
                    
                    it("get one movie from array by index"){
                        expect(upcomingMovieListInteractor.movie == movie).to(beTrue())
                    }
                }
            }
        }
    }
}
