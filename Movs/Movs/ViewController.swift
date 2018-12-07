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
        let movies = GenreMoyaGateway()// UpComingMovieListMoyaGateway()
        movies.fecthGenres() { [weak self] result in
            guard let strongSelf = self else {return}
            
            print(result)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }


}

