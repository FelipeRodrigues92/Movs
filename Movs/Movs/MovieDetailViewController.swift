//
//  MovieDetailViewController.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit

class MovieDetailViewController : ViewController{
    
    var movieToDetail : Movie
    
    init(movie: Movie){
        movieToDetail = movie
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
