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
    ///Instantiating Moya provider of Genre type
    private let provider = MoyaProvider<GenreTarget>()
    
    ///Json decoder configurations
    private lazy var jsonDecodable : JSONDecoder = {
        let decodable = JSONDecoder()
        decodable.keyDecodingStrategy = .convertFromSnakeCase
        return decodable
    }()
    /**
     Get a array of all Genres on API
     */
    func fecthGenres(_ completion: @escaping (Result<[Genre]>) -> ()) {
        
        provider.requestDecodable(target: GenreTarget.list, decoder: jsonDecodable) {(result : Result<GenreList>) in
            ///Here it is transform the json decoder result in a array of Genre and calling it back in completion
            let result = result.map { genreList in genreList.genres}
            completion(result)
        }
        
    }
    
    
}
