//
//  UpComingMovieCollectionViewController.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 07/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit

class UpComingMovieViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    lazy var layout: UICollectionViewFlowLayout = {
    let collectionViewLayout = UICollectionViewFlowLayout()
    collectionViewLayout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
    collectionViewLayout.itemSize = CGSize(width: 150, height: 150)
        return collectionViewLayout
    }()
    
    var items: [Movie] = []
    
    lazy var collectionView : UICollectionView = {
        
        let movieCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        movieCollectionView.register(UpComingMovieCell.self, forCellWithReuseIdentifier: UPCOMING_MOVIECOLLECTION_CELL)
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
        movieCollectionView.backgroundColor = .blue
        return movieCollectionView
    }()
    
    override func viewDidLoad() {
       // self.a
        self.view.addSubview(collectionView)
        
        let movies = UpComingMovieListMoyaGateway()
        movies.fecthUpComingMovies(page: 01) { [weak self] result in
            guard let strongSelf = self else {return}
            if case let .success(movies) = result {
                strongSelf.items = movies
                strongSelf.collectionView.reloadData()
                print(strongSelf.items.count)
            } else {/*do nothing*/}
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let upComingCell = collectionView.dequeueReusableCell(withReuseIdentifier: UPCOMING_MOVIECOLLECTION_CELL, for: indexPath) as! UpComingMovieCell
        upComingCell.backgroundColor = .gray
        upComingCell.uploadView(with: UpComingMovieUnitViewModel.init(movie: items[indexPath.row]))
        return upComingCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
