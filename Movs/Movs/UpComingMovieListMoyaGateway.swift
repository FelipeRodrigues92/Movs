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
    
     ///InstantiatingMoya provider of UpComingMovieTarget type
    private let provider = MoyaProvider<UpComingMovieTarget>()
    
    ///Json decoder configurations
    private lazy var jsonDecoder: JSONDecoder = {
        
            let decoder = JSONDecoder()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            decoder.dateDecodingStrategy = .formatted(dateFormatter)
            decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        return decoder
    }()
    /**
     Get a array of upcoming movies on API by page
     */
    func fecthUpComingMovies(page: Int, _ completion: @escaping (Result<[Movie]>) -> ()) {
        
        provider.requestDecodable(target: UpComingMovieTarget.upComingMovieList(page: page), decoder: jsonDecoder) { (result : Result<MovieList>) in
            
            ///Here it is transform the json decoder result in a array of movies and calling it back in completion
            let result = result.map { movieList in movieList.results}
            completion(result)
        }
        
    }
}
