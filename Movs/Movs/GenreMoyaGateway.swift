//
//  GenreMoyaGateway.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Result
import Moya

final class GenreMoyaGateway : GenreGateway{
    
    private let provider = MoyaProvider<GenreTarget>()
    private lazy var jsonDecodable : JSONDecoder = {
        let decodable = JSONDecoder()
        decodable.keyDecodingStrategy = .convertFromSnakeCase
        return decodable
    }()
    
    func fecthGenres(_ completion: @escaping (Result<[Genre]>) -> ()) {
        
        provider.requestDecodable(target: GenreTarget.list, decoder: jsonDecodable) {(result : Result<GenreList>) in
            
            let result = result.map { genreList in genreList.genres}
            completion(result)
        }
        
    }
    
    
}
