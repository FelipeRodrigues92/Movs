//
//  UpcomingMovieUnitCellViewModelSpec.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 09/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Quick
import Nimble

@testable import Movs

class UpcomingMovieUnitCellViewModelSpec : QuickSpec{
    
    override func spec() {
        describe("UpcomingMovieUnitCellViewModel Spec"){
            
            context("when initalize"){
                var movie : Movie!
                var upcomingMovieUnitCellViewModel : UpcomingMovieUnitCellViewModel!
                var date : Date!
                beforeEach {
                    date = Date(timeIntervalSinceNow: 1)
                    movie = Movie(id: 03, genreIds: [18], title: "teste the movie", overview: "I'm testing this", releaseDate: date, posterPath: "/fosdkfsdf.png")
                    upcomingMovieUnitCellViewModel = UpcomingMovieUnitCellViewModel(movie: movie)
                }
                
                it("is not nil"){
                    expect(upcomingMovieUnitCellViewModel).notTo(beNil())
                }
                
                it("if date formmat is correct"){
                    expect(upcomingMovieUnitCellViewModel.releaseDate == date.toString(dateFormat: "YYYY")).to(beTrue())
                }
            }
        }
    }
}
