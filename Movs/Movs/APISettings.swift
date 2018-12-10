//
//  APISettings.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Foundation

class APISettings{
    ///MyKey api
    static let key = "63bc3ea004fceae4ea23581b3a9d41ad"
    ///Base url of the API
    static let baseUrl = URL(string: "https://api.themoviedb.org/3")!
    ///URL to get the images
    private static let imageBaseURL = URL(string: "https://image.tmdb.org/t/p/w500")!
    
    
    /**
    It adds one more string path to the base URL of images.
     - parameters:
     - path: String
     */
    static func postImageURL(path: String) -> URL {
        return imageBaseURL.appendingPathComponent(path)
    }
}
