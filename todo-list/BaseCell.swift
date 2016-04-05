//
//  BaseCell.swift
//  todo-list
//
//  Created by Joao Henriques on 05/04/16.
//  Copyright © 2016 Joao Henriques. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init has not been implemented");
    }
    
    func setupViews() {
    
    }
}