//
//  UpcomingMovieListCellSpec.swift
//  MovsTests
//
//  Created by Felipe Rodrigues Silva on 09/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Quick
import Nimble

@testable import Movs

class UpcomingMovieListCellSpec : QuickSpec{
    
    override func spec() {
        describe("UpcomingMovieListCellSpec Spec"){
            
            context("when initialize"){
                var upcomingMovieListCell : UpcomingMovieListCell!
                
                beforeEach {
                    upcomingMovieListCell = UpcomingMovieListCell()
                }
                
                it("upcomingMovieCellUnitView is no nil"){
                    expect(upcomingMovieListCell.upComingMovieCellView).toNot(beNil())
                }
            }
        }
    }
}
