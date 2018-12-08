//
//  MovieDetailViewController.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit

class MovieDetailViewController : ViewController{
    
    lazy var movieDetailView : UIView = {
        let movieDetailView = MovieDetailView(frame: self.view.bounds)
        
        return movieDetailView
    }()
 //   var movieToDetail : Movie
    
//    init(movie: Movie){
//        movieToDetail = movie
//        super.init(nibName: nil, bundle: nil)
//        self.view.addSubview(movieDetailView)
//    }
    
    init(){
        super.init(nibName: nil, bundle: nil)
        self.view.addSubview(movieDetailView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
