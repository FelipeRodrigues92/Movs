//
//  UpComingMovie.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Foundation
import Moya

enum UpComingMovieTarget{
    case upComingMovieList(page: Int)
    
}
extension UpComingMovieTarget: TargetType{
    
    var baseURL: URL {
        return APISettings.baseUrl
    }
    
    var path: String{
        switch self {
        case .upComingMovieList:
            return API_UPCOMING_MOVIE_LIST
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .upComingMovieList:
            return .get
        }
    }
    
    var sampleData: Data{
        switch self {
        case .upComingMovieList:
            return Data()

        }
    }
    
    var task: Task{
        switch self {
        case .upComingMovieList(let page):
            return .requestParameters(parameters: ["api_key": APISettings.key, "page" : page], encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        return nil
    }
    
    
}
