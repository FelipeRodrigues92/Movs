//
//  ViewController.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 05/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        let movies = UpComingMovieListMoyaGateway()
        movies.fecthUpComingMovies(page: 01) { [weak self] result in
            //guard let strongSelf = self else {return}
            if case let .success(movies) = result {
                let movies = MovieList.init(results: movies)
                print(movies.results)
            } else {/*do nothing*/}
        }
        
       // let collection = UpComingMovieCollectionView()
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

