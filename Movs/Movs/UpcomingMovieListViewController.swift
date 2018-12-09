//
//  UpComingMovieCollectionViewController.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 07/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit

class UpcomingMovieListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    lazy var layout: UICollectionViewFlowLayout = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        collectionViewLayout.itemSize = CGSize(width: 170, height: 242)
        return collectionViewLayout
    }()
    
    var items: [UpcomingMovieUnitViewModel] = []
    var interactor : UpcomingMovieBusinessLogic?
    var router : (UpcomingMovieListRoutingLogic & UpcomingMovieListDataPassing)?
    var page : Int = 1
    
    lazy var collectionView : UICollectionView = {
        
        let movieCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        movieCollectionView.register(UpcomingMovieCell.self, forCellWithReuseIdentifier: UPCOMING_MOVIECOLLECTION_CELL)
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
        movieCollectionView.backgroundColor = .white
        return movieCollectionView
    }()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func viewDidLoad() {
        self.view.addSubview(collectionView)
        interactor?.fecthUpComingMovies(for: page)
    }
    
    private func setup()
    {
        let viewController = self
        let interactor = UpcomingMovieInteractor()
        let presenter = UpcomingMovieListPresenter()
        let router = UpcomingMovieListRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
        setupViewController()
    }
    
    private func setupViewController() {
        title = NAVEGATION_UPCOMING_TITLE
        //UIColor(displayP3Red: 43, green: 44, blue: 47, alpha: 1)
        tabBarItem = UITabBarItem(title: self.title, image: UIImage(named: NAVEGATION_UPCOMING_IMAGE), tag: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let upComingCell = collectionView.dequeueReusableCell(withReuseIdentifier: UPCOMING_MOVIECOLLECTION_CELL, for: indexPath) as! UpcomingMovieCell
        upComingCell.uploadView(with: items[indexPath.row])
        return upComingCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        interactor?.setMovie(with: indexPath.row)
        router?.routeToMovieDetail()
    }
}

extension UpcomingMovieListViewController : UpComingUpMovieFeedViews{
    func feedMovieListArray(with moviesModel: [UpcomingMovieUnitViewModel]) {
        self.items.append(contentsOf: moviesModel)
        self.collectionView.reloadData()
    }
    
    
}
