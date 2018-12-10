//
//  ViewCode.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 06/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import Foundation

protocol ViewCode {
    /**
     For add childrens classes to parente in order.
     */
    func buildViewHierarchy()
    /**
     For set the view constrainsts.
     */
    func setupConstraints()
    /**
     For set adicional configurations.
     */
    func setupAdditionalConfigurations()
    /**
     Call the others fuctions of this procotol in correct order.
     */
    func setupView()
}
extension ViewCode{
    func setupView(){

        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfigurations()
    }
}
