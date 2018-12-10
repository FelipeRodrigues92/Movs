//
//  Movie.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Foundation

struct Movie : Decodable, Equatable{
    let id:Int
    let genreIds: [Int]
    let title: String
    let overview: String
    let releaseDate : Date
    let posterPath : String
}
