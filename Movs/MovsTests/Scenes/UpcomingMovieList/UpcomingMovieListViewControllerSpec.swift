//
//  UpcomingMovieListViewControllerSpec.swift
//  MovsTests
//
//  Created by Felipe Rodrigues Silva on 09/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Quick
import Nimble

@testable import Movs

class UpcomingMovieListViewControllerSpec : QuickSpec{
    override func spec() {
        describe("UpcomingMovieListViewController Spec") {
            var upcomingMovieListViewController : UpcomingMovieListViewController!
            var movie :Movie!
            context("when initilize"){
                
                beforeEach {
                    movie = Movie(id: 03, genreIds: [18], title: "teste the movie", overview: "I'm testing this", releaseDate: Date(timeIntervalSinceNow: 1), posterPath: "/fosdkfsdf.png")
                    
                    upcomingMovieListViewController = UpcomingMovieListViewController()
                }
                
                it("viewController not be nil"){
                    expect(upcomingMovieListViewController).toNot(beNil())
                }
                 it("viewController collection view to not be nil"){
                    expect(upcomingMovieListViewController.collectionView).toNot(beNil())
                }
                it("Collection view number of itens for section more than 0"){
                    expect(upcomingMovieListViewController.collectionView.numberOfSections > 0 ).to(beTrue())
                }
                
                it("Collection view number of itens for section more than 0"){
                    expect(upcomingMovieListViewController.collectionView.numberOfSections > 0 ).to(beTrue())
                }
            }
        }
        
    }
}
