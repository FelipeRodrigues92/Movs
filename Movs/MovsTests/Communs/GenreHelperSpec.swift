//
//  GenreHelperSpec.swift
//  MovsTests
//
//  Created by Felipe Rodrigues Silva on 09/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Quick
import Nimble

@testable import Movs

class GenreHelperSpec: QuickSpec{
    override func spec() {
        describe("GenreHelper Spec"){
            var intArray : [Int]!
            var genre : Genre!
            context("Genres init"){
                beforeEach {
                    genre = Genre(id: 5, name: "the movie")
                    GenreHelper.genreList = [genre]
                    intArray = [18, 5]
                }
                it("get genre's names of a array and not return nil"){
                    expect(GenreHelper.getGenreName(with: intArray)).toNot(beNil())
                }
                
              
                genre = Genre(id: 17, name: "the movie")
                GenreHelper.genreList = [genre]
                
                it("get no one genre's name of a array, but not return nil"){
                    expect(GenreHelper.getGenreName(with: intArray)).toNot(beNil())
                }
                
                it("pass int array empty"){
                    expect(GenreHelper.getGenreName(with: [])).toNot(beNil())
                }
            }
        }
    }
}
