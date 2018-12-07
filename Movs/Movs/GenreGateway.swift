//
//  GenresGateway.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Foundation

protocol GenreGateway {
    func fecthGenres(_ completion: @escaping (Result<[Genre]>) -> ())
    
}
