//
//  UpComingMovieCell.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import SnapKit
import UIKit
import Kingfisher

class UpcomingMovieCell : UICollectionViewCell{
    
    lazy var UpComingMovieCellView : UpComingMovieUnitView = {
        let cellView =  UpComingMovieUnitView()
        return cellView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func uploadView(with movieCell: UpComingMovieUnitViewModel){
        let resource = APISettings.postImageURL(path: movieCell.posterImage)
        self.UpComingMovieCellView.dataLabel.text = movieCell.releaseDate
        self.UpComingMovieCellView.titleLabel.text = movieCell.title
        self.UpComingMovieCellView.posterImageView.kf.setImage(with:resource)
    }
    
}

extension UpcomingMovieCell: ViewCode{
    func buildViewHierarchy() {
        self.addSubview(UpComingMovieCellView)
    }
    
    func setupConstraints() {
        self.UpComingMovieCellView.snp.makeConstraints { make in
            make.top.right.left.bottom.equalToSuperview()
        }
    }
    
    func setupAdditionalConfigurations() {
        
    }
    
    
}
