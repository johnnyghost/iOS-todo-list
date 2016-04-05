//
//  TaskCell.swift
//  todo-list
//
//  Created by Joao Henriques on 05/04/16.
//  Copyright © 2016 Joao Henriques. All rights reserved.
//

import UIKit

class TaskCell: BaseCell {
   
    let nameLabel:UILabel = {
        
        let label = UILabel()
        
        label.text = "Sample Task"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFontOfSize(14)
        
        return label
    }()
    
    override func buildViews() {
        addSubview(nameLabel)
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-8-[v0]-8-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-8-[v0]-8-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
    }
}