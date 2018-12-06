//
//  Result.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

enum Result<T>{
    case success(T)
    case failure(Error)
    
    var value: T?{
        if case let .success(value) = self{
            return value
        }else{
            return nil
        }
    }
    
    func map<U>(_ transform: (T) throws -> (U)) rethrows -> Result<U>{
        switch self{
            case .success(let value):
                let transformedValue = try transform(value)
                return Result<U>.success(transformedValue)
            case .failure(let error):
                return Result<U>.failure(error)
        }
    }
}
