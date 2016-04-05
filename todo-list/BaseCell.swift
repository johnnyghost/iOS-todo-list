//
//  BaseCell.swift
//  todo-list
//
//  Created by Joao Henriques on 05/04/16.
//  Copyright © 2016 Joao Henriques. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    
    /**
     * Init the Base Cell.
     *
     *  - parameter frame
     */
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildViews()
    }
    
    /**
     * Init the base Cell.
     *
     * - parameter aDecoder
     *
     */
    required init?(coder aDecoder: NSCoder) {
        fatalError("init has not been implemented");
    }
    
    /**
     * Build views.
     * 
     * Where the components are added
     * to the view.
     */
    func buildViews() {}
}