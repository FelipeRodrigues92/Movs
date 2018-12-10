//
//  MovieDetailViewControllerSpec.swift
//  MovsTests
//
//  Created by Felipe Rodrigues Silva on 09/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//
import Quick
import Nimble

@testable import Movs

class MovieDetailViewControllerSpec : QuickSpec{
    override func spec() {
        describe("MovieDetailViewController Spec") {
            var movieDetailViewController : MovieDetailViewController!
            var movie :Movie!
            context("when initilize"){
                
                beforeEach {
                    movie = Movie(id: 03, genreIds: [18], title: "teste the movie", overview: "I'm testing this", releaseDate: Date(timeIntervalSinceNow: 1), posterPath: "/fosdkfsdf.png")
                    
                    movieDetailViewController = MovieDetailViewController(movie: movie)
                }
                
                it("to not be nil"){
                    expect(movieDetailViewController).toNot(beNil())
                    expect(movieDetailViewController.movieDetailView).toNot(beNil())
                }
                
            }
        }
        
    }
}
