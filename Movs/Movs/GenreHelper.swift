//
//  GenreHelper.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Foundation

struct GenreHelper{
    private init(){}
    
    static var genreList = [Genre]()
    
    static func getGenreName(with ids:[Int]) -> [String]?{
        var names = [String]()
        for genre in genreList {
            if(ids.contains(genre.id)){
                names.append(genre.name)
            }
        }
        return nil
    }
}
