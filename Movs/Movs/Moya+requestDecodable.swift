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
        ///If the Moya target request result is sucess, it will call the decoder json
        self.request(target){ result in
            switch result{
                case .success(let value):
                    do{
                        ///Here it is deconding request to a Result of generic type
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

