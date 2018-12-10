//
//  GenreHelper.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Foundation

struct GenreHelper{
    
    ///Private init, so can't exist a instance
    private init(){}
    
    /// Array for store all Genres types while app is on
    static var genreList = [Genre]()
    
    /**
    Get names of geners by ids.
     
     - parameters:
     - ids: Array of int [Int]
     */
    static func getGenreName(with ids:[Int]) -> String{
        var genreNames = String()
        for genre in genreList {
            if(ids.contains(genre.id)){
                genreNames.append(contentsOf: " " + genre.name + ",")
            }
        }
        if genreNames.count > 0{
            genreNames.removeLast()
        }else{
            genreNames.append("Unknown")
        }
        return genreNames
    }
}
