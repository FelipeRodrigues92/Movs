//
//  UpComingMovieCell.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import SnapKit
import UIKit

class UpComingMovieCell : UICollectionViewCell{
    
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
    
}

extension UpComingMovieCell: ViewCode{
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
