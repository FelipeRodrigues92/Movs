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
        stackView.spacing = 8
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
        title.font = UIFont.boldSystemFont(ofSize: 16)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    lazy var dataLabel : UILabel = {
        let dataLabel = UILabel()
        dataLabel.font = UIFont.boldSystemFont(ofSize: 14)
        dataLabel.translatesAutoresizingMaskIntoConstraints = false
        return dataLabel
    }()
    
    
    lazy var genresLabel : UILabel = {
        let genresLabel = UILabel()
        genresLabel.font = UIFont.boldSystemFont(ofSize: 12)
        genresLabel.translatesAutoresizingMaskIntoConstraints = false
        return genresLabel
    }()
    
    lazy var overviewLabel : UILabel = {
        let overview = UILabel()
        overview.font = UIFont.boldSystemFont(ofSize: 12)
        overview.translatesAutoresizingMaskIntoConstraints = false
        return overview
    }()

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    func uploadView(with movieModel: MovieDetailModel){
        let resource = APISettings.postImageURL(path: movieModel.posterImagePath)
        self.postImage.kf.setImage(with: resource)
        self.dataLabel.text = movieModel.releaseDate
        self.overviewLabel.text = movieModel.overview
        self.titleLabel.text = movieModel.title
        self.genresLabel.text = GenreHelper.getGenreName(with: movieModel.genreIds) as String
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MovieDetailView : ViewCode{
    func buildViewHierarchy() {
        self.addSubview(titleLabel)
        self.addSubview(postImage)
        stackView.addArrangedSubview(dataLabel)
        stackView.addArrangedSubview(genresLabel)
        stackView.addArrangedSubview(overviewLabel)
        self.addSubview(stackView)
    }
    
    func setupConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.1)
        }
        postImage.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom)
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.6)
        }
        stackView.snp.makeConstraints { make in
            make.top.equalTo(postImage.snp.bottom)
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.3)
        }
        
    }
    
    func setupAdditionalConfigurations() {
        stackView.backgroundColor = .black
        titleLabel.backgroundColor = .blue
        postImage.backgroundColor = .red
        
        dataLabel.text = "asdajsknfsdjnf"
        genresLabel.text = "ajfnwiefiwewew"
        overviewLabel.text = "asjnweoihnvioew"
        
    }
    
    
}
