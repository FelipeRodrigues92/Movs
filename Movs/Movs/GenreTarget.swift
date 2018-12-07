//
//  GenreTarget.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Foundation
import Moya

enum GenreTarget{
    case list
}
extension GenreTarget: TargetType{
    var baseURL: URL {
        return APISettings.baseUrl
    }
    
    var path: String {
        switch self {
        case .list:
            return API_GENRE_LIST
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .list:
            return .get
        }
    }
    
    var sampleData: Data {
        switch self {
        case .list:
            return Data()
        }
    }
    
    var task: Task {
        return .requestParameters(parameters: ["api_key": APISettings.key], encoding: URLEncoding.queryString)
    }
    
    var headers: [String : String]? {
        return nil
    }
    
    
}
