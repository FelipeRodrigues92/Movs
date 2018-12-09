//
//  MovieDetailView.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 08/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit
import SnapKit

class MovieDetailView : UIView{
    
    lazy var stackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        return stackView
    }()
    
    lazy var postImage: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var titleLabel : UILabel = {
        let title = UILabel()
        title.font = UIFont.boldSystemFont(ofSize: 20)
        title.numberOfLines = 0
        title.textColor = .white
        title.textAlignment = .center
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    lazy var dataLabel : UILabel = {
        let dataLabel = UILabel()
        dataLabel.font = UIFont.boldSystemFont(ofSize: 14)
        dataLabel.numberOfLines = 0
        dataLabel.textColor = .white
        dataLabel.textAlignment = .center
        dataLabel.translatesAutoresizingMaskIntoConstraints = false
        return dataLabel
    }()
    
    
    lazy var genresLabel : UILabel = {
        let genresLabel = UILabel()
        genresLabel.font = UIFont.boldSystemFont(ofSize: 14)
        genresLabel.numberOfLines = 0
        genresLabel.textColor = .white
        genresLabel.textAlignment = .center
        genresLabel.translatesAutoresizingMaskIntoConstraints = false
        return genresLabel
    }()
    
    lazy var overviewText : UITextView = {
        let view = UITextView(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 14)
        view.textColor = .white
        return view
    }()

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    func uploadView(with movieModel: MovieDetailModel){
        let resource = APISettings.postImageURL(path: movieModel.posterImagePath)
        self.postImage.kf.setImage(with: resource)
        self.dataLabel.text = "Lançamento: " + movieModel.releaseDate
        self.overviewText.text = movieModel.overview
        self.titleLabel.text = movieModel.title
        self.genresLabel.text = GenreHelper.getGenreName(with: movieModel.genreIds) as String
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MovieDetailView : ViewCode{
    func buildViewHierarchy() {
        self.addSubview(postImage)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(dataLabel)
        stackView.addArrangedSubview(genresLabel)
        self.addSubview(stackView)
        self.addSubview(overviewText)
    }
    
    func setupConstraints() {

        postImage.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(20)
            make.top.equalToSuperview().inset(85)
            make.height.equalToSuperview().multipliedBy(0.4)
        }
        stackView.snp.makeConstraints { make in
            make.top.equalTo(postImage.snp.bottom)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalToSuperview().multipliedBy(0.15)
        }
        overviewText.snp.makeConstraints { (make) in
            make.top.equalTo(stackView.snp.bottom)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalToSuperview().multipliedBy(0.3)
            make.bottom.equalToSuperview()
        }

    }
    
    func setupAdditionalConfigurations() {
        let gray =  UIColor(displayP3Red: 18/255, green: 18/255, blue: 18/255, alpha: 1)
        stackView.backgroundColor = gray
        titleLabel.backgroundColor = gray
        postImage.backgroundColor = gray
        overviewText.backgroundColor = gray
        self.backgroundColor = gray
    }
    
    
}
