//
//  MovieDetailInteractorSpec.swift
//  MovsTests
//
//  Created by Felipe Rodrigues Silva on 09/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Quick
import Nimble

@testable import Movs

class MovieDetailInteractorSpec: QuickSpec{
    override func spec() {
        describe("MovieDetailInteractor Spec"){
            
            context("when initialize"){
                var interactor : MovieDetailInteractor!
                var movie : Movie!
                beforeEach {
                    interactor = MovieDetailInteractor()
                    movie = Movie(id: 03, genreIds: [18], title: "teste the movie", overview: "I'm testing this", releaseDate: Date(timeIntervalSinceNow: 1), posterPath: "/fosdkfsdf.png")
                    interactor.setMovie(movie: movie)
                }
                it("interactor movie is not nil"){
                    expect(interactor.movie).toNot(beNil())
                }
                it("interactor movie was set"){
                    expect(interactor.movie == movie).to(beTrue())
                }
            }
        }
    }
    
}
