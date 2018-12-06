//
//  APISettings.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Foundation

class APISettings{
    
    static let key = "63bc3ea004fceae4ea23581b3a9d41ad"
    
    static let baseUrl = URL(string: "https://api.themoviedb.org/3")!
    
    private static let imageBaseURL = URL(string: "https://image.tmdb.org/t/p/w500")!
    
    static func postImageURL(path: String) -> URL {
        return imageBaseURL.appendingPathComponent(path)
    }
}
