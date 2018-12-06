//
//  Moya+requestDecodable.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Moya

extension MoyaProvider{
    
    func requestDecodable<T: Decodable>(target: Target, decoder: JSONDecoder,_ completion: @escaping (Result<T>) -> Void){
        
        self.request(target){ result in
            switch result{
                case .success(let value):
                    do{
                        let decodedData = try decoder.decode(T.self, from: value.data)
                        completion(.success(decodedData))
                    } catch {
                            completion(.failure(error))
                    }
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
}

