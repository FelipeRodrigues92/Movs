//
//  ViewCode.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Foundation

protocol CodeView {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfigurations()
    func setupView()
}
extension CodeView{
    func setupView(){
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfigurations()
    }
}
