//
//  ViewCode.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Foundation

protocol ViewCode {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfigurations()
    func setupView()
}
extension ViewCode{
    func setupView(){
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfigurations()
    }
}
