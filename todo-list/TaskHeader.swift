//
//  TaskHeader.swift
//  todo-list
//
//  Created by Joao Henriques on 05/04/16.
//  Copyright © 2016 Joao Henriques. All rights reserved.
//

import UIKit

class TaskHeader: BaseCell {
  
  var viewController: ViewController?
  
  /// Text input
  let textInputField:UITextField = {
    let textField = UITextField()
    textField.placeholder = "Enter task name"
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.borderStyle = .RoundedRect
    return textField
  }()
  
  /// Add button
  let addButton:UIButton = {
    let button = UIButton(type: .System)
    
    button.setTitle("Add task", forState: .Normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  /**
   * @inherits
   */
  override func buildViews() {
    
    addSubview(textInputField)
    addSubview(addButton)
    
    addButton.addTarget(self, action: "addTask", forControlEvents: .TouchUpInside)
    
    addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-8-[v0]-[v1(80)]-8-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": textInputField, "v1": addButton]))
    addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-8-[v0]-8-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": textInputField]))
    
    addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-8-[v0]-8-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": addButton]))
  }
  
  func addTask() {
    viewController?.addTask(textInputField.text!)
    textInputField.text = ""
  }
}