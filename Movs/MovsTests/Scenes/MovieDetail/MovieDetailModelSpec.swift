//
//  MovieDetailViewModelSpec.swift
//  MovsTests
//
//  Created by Felipe Rodrigues Silva on 09/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Quick
import Nimble

@testable import Movs

class MovieDetailModelSpec : QuickSpec{
    
    override func spec() {
        describe("MovieDetailModel Spec"){

            context("when initalize"){
                var movie : Movie!
                var movieDetailModel : MovieDetailModel!
                var date : Date!
                beforeEach {
                    date = Date(timeIntervalSinceNow: 1)
                    movie = Movie(id: 03, genreIds: [18], title: "teste the movie", overview: "I'm testing this", releaseDate: date, posterPath: "/fosdkfsdf.png")
                    movieDetailModel = MovieDetailModel(movie: movie)
                }
                
                it("is not nil"){
                    expect(movieDetailModel).notTo(beNil())
                }
                
                it("if date formmat is correct"){
                    expect(movieDetailModel.releaseDate == date.toString(dateFormat: "dd/MM/YYYY")).to(beTrue())
                }
            }
        }
    }
}
