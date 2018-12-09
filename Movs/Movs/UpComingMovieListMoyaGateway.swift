//
//  UpComingMovieListMoyaGateway.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Result
import Moya

final class UpComingMovieListMoyaGateway : UpComingMovieListGateway{
    
    private let provider = MoyaProvider<UpComingMovieTarget>()
    private lazy var jsonDecoder: JSONDecoder = {
        
            let decoder = JSONDecoder()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            decoder.dateDecodingStrategy = .formatted(dateFormatter)
            decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        return decoder
    }()
    
    func fecthUpComingMovies(page: Int, _ completion: @escaping (Result<[Movie]>) -> ()) {
        
        provider.requestDecodable(target: UpComingMovieTarget.upComingMovieList(page: page), decoder: jsonDecoder) { (result : Result<MovieList>) in
            let result = result.map { movieList in movieList.results}
            completion(result)
        }
        
    }
}
