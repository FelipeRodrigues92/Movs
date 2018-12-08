//
//  upComingMovieUnitView.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 07/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit
import SnapKit
import Kingfisher

class UpComingMovieUnitView : UIView{
    
    lazy var viewConteiner : UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        return stackView
    }()
    lazy var posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var titleLabel : UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    lazy var dataLabel : UILabel = {
        let dataLabel = UILabel()
        dataLabel.font = UIFont.boldSystemFont(ofSize: 20)
        dataLabel.translatesAutoresizingMaskIntoConstraints = false
        return dataLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension UpComingMovieUnitView : ViewCode{
    func buildViewHierarchy() {
        viewConteiner.addArrangedSubview(posterImageView)
        viewConteiner.addArrangedSubview(titleLabel)
        viewConteiner.addArrangedSubview(dataLabel)
        self.addSubview(viewConteiner)
        self.addSubview(posterImageView)
    }
    
    func setupConstraints() {
        
        self.posterImageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.7)
            make.width.equalToSuperview()
            
        }

        self.viewConteiner.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.top.equalTo(posterImageView.snp.bottom).offset(2)
        }
    }
    
    func setupAdditionalConfigurations() {
    }
    
    
}


