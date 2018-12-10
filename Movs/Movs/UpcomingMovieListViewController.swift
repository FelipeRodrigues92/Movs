//
//  UpComingMovieCollectionViewController.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 07/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit

class UpcomingMovieListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
   ///Set configuration for layout of some UICollectionView
    lazy var layout: UICollectionViewFlowLayout = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        collectionViewLayout.itemSize = CGSize(width: 170, height: 242)
        return collectionViewLayout
    }()
    ///Items are empty now, but will be a array of movies cells.
    var items: [UpcomingMovieUnitCellViewModel] = []
    
    ///THis viewController interactor
    var interactor : UpcomingMovieListBusinessLogic?
    var router : (UpcomingMovieListRoutingLogic & UpcomingMovieListDataPassing)?
    var page : Int = 1
    
    ///CollectionView is be setting
    lazy var collectionView : UICollectionView = {
        
        let movieCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        movieCollectionView.register(UpcomingMovieListCell.self, forCellWithReuseIdentifier: UPCOMING_MOVIECOLLECTION_CELL)
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
        ///Call inteiractor function to populate this movie's controller view after pass over the VIP cicle
        interactor?.fecthUpComingMovies(for: page)
    }
    /**
     Setup UpcomingMovieListViewController protocols.
     */
    private func setup()
    {
        let viewController = self
        let interactor = UpcomingMovieListInteractor()
        let presenter = UpcomingMovieListPresenter()
        let router = UpcomingMovieListRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
        setupView()
    }
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let upComingCell = collectionView.dequeueReusableCell(withReuseIdentifier: UPCOMING_MOVIECOLLECTION_CELL, for: indexPath) as! UpcomingMovieListCell
        ///Tranformationg collectionView's cells to UpcomingMovieListCell
        upComingCell.uploadView(with: items[indexPath.row])
        return upComingCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        interactor?.setMovie(with: indexPath.row)
        router?.routeToMovieDetail()
    }
}

extension UpcomingMovieListViewController : UpComingUpMovieFeedViews{
    func feedMovieListArray(with moviesModel: [UpcomingMovieUnitCellViewModel]) {
        self.items.append(contentsOf: moviesModel)
        self.collectionView.reloadData()
    }
}
extension UpcomingMovieListViewController : ViewCode{
    func buildViewHierarchy() {
        self.view.addSubview(collectionView)
    }
    
    func setupConstraints() {}
    
    func setupAdditionalConfigurations() {
        self.view.backgroundColor = .black
        self.collectionView.backgroundColor = UIColor(displayP3Red: 18/255, green: 18/255, blue: 18/255, alpha: 1)
        
        title = NAVEGATION_UPCOMING_TITLE
        tabBarItem = UITabBarItem(title: self.title, image: UIImage(named: NAVEGATION_UPCOMING_IMAGE), tag: 0)
    }
    
}
