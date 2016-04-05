//
//  ViewController.swift
//  todo-list
//
//  Created by Joao Henriques on 05/04/16.
//  Copyright © 2016 Joao Henriques. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
  
  var tasks = ["task1"];
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.title = "To-Do List"
    
    collectionView?.backgroundColor = UIColor.whiteColor()
    collectionView?.alwaysBounceVertical = true
    collectionView?.registerClass(TaskCell.self, forCellWithReuseIdentifier: "cellId")
    collectionView?.registerClass(TaskHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "taskHeader")
    
  }
  
  /**
   * Add a task.
   *
   * - parameter taskName: The task name
   */
  func addTask(taskName: String) {
    tasks.append(taskName);
    collectionView?.reloadData();
  }
  
  // MARK: UICollectionViewController
  
  override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return tasks.count
  }
  
  override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    
    let taskCell = collectionView.dequeueReusableCellWithReuseIdentifier("cellId", forIndexPath: indexPath) as! TaskCell
    
    taskCell.nameLabel.text = tasks[indexPath.item]
    
    return taskCell
  }
  
  func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    
    return CGSizeMake(view.frame.width, 50)
  }
  
  func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    return CGSizeMake(view.frame.width, 100)
  }
  
  override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
    
    let header = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "taskHeader", forIndexPath: indexPath) as! TaskHeader
    header.viewController = self
    
    return header
  }
  
}


