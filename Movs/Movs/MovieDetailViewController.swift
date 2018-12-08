//
//  MovieDetailViewController.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit

class MovieDetailViewController : ViewController{
    
    var interactor : MovieDetailBusinessLogic?
    
    lazy var movieDetailView : MovieDetailView = {
        let movieDetailView = MovieDetailView(frame: self.view.bounds)
        
        return movieDetailView
    }()
    
    var movieToDetail : Movie?
    
    init(movie: Movie){
        movieToDetail = movie
        super.init(nibName: nil, bundle: nil)
        self.view.addSubview(movieDetailView)
        setup()
        callIteractor(movie: movie)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup()
    {
        let viewController = self
        let interactor = MovieDetailInteractor()
        let presenter = MovieDetailPresenter()
     //   let router = Moviede()
        viewController.interactor = interactor
       // viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
     //   router.viewController = viewController
      //  router.dataStore = interactor
    }
    private func callIteractor(movie: Movie){
        guard let interactor = self.interactor else{return}
        interactor.setMovie(movie: movie)
    }
    
}

extension MovieDetailViewController : MovieDetailFeedView{
    func feedMovieDetailView(with viewModel: MovieDetailModel) {
        movieDetailView.uploadView(with: viewModel)
    }
    
    
    
}
