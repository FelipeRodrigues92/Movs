//
//  MovieDetailViewSpec.swift
//  MovsTests
//
//  Created by Felipe Rodrigues Silva on 09/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Quick
import Nimble

@testable import Movs

class MovieDetailViewSpec: QuickSpec {
    override func spec() {
        describe("MovieDetailView Spec") {
            var view : MovieDetailView!
            
            context("when initalize"){
                
                beforeEach {
                    view = MovieDetailView(frame: .zero)
                }
                
                
                it("should not be nil") {
                    expect(view).toNot(beNil())
                }
                
                it("subViews not be nil"){
                    expect(view.postImage).toNot(beNil())
                    expect(view.titleLabel).toNot(beNil())
                    expect(view.dataLabel).toNot(beNil())
                    expect(view.genresLabel).toNot(beNil())
                    expect(view.overviewText).toNot(beNil())
                    
                }
                
                context("populate subViews"){
                    view = MovieDetailView(frame: .zero)
                    let oldTitleText = view.titleLabel.text
                    let oldDateText = view.dataLabel.text
                    let oldGenresText = view.genresLabel.text
                    let oldOverviewText = view.overviewText.text
                    var movie : Movie!
                    var movieDetailModel : MovieDetailModel!
                    beforeEach {
                        movie = Movie(id: 03, genreIds: [18], title: "teste the movie", overview: "I'm testing this", releaseDate: Date(timeIntervalSinceNow: 1), posterPath: "/fosdkfsdf.png")
                        movieDetailModel = MovieDetailModel(movie: movie)
                        
                        view.uploadView(with: movieDetailModel)
                    }
                    
                    it("subViews need be populated"){
                        expect(view.postImage.image).to(beNil())
                        expect(view.titleLabel.text == oldTitleText).to(beFalse())
                        expect(view.dataLabel.text == oldDateText).to(beFalse())
                        expect(view.genresLabel.text == oldGenresText).to(beFalse())
                        expect(view.overviewText.text == oldOverviewText).to(beFalse())
                    }
                }
            }
            
            
            
            
        }
    }
}
    

