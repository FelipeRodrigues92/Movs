//
//  ImageKingFetcherGateway.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 07/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Kingfisher

final class ImageKingFetcherGateway: ImageFetcher {
    func imageFecth(with url: URL, to imageView: UIImageView){
        imageView.kf.setImage(with: url)
    }
    
    
}
