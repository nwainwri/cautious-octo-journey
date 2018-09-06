//
//  DetailViewController.swift
//  Every.Do_it_Again
//
//  Created by Nathan Wainwright on 2018-09-05.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  
  @IBOutlet weak var todoPriority: UILabel!
  
  @IBOutlet weak var detailDescriptionLabel: UILabel!
  
  @IBOutlet weak var toDoDescriptionLabel: UILabel!
  
  func configureView() {
    // Update the user interface for the detail item.
    if let detail = detailItem {
      if let label = todoPriority {
        label.text = detail.priorityNumber.description
      }
      if let label = detailDescriptionLabel {
        label.text = detail.title?.description ?? "NO_TITLE"
      }
      if let label = toDoDescriptionLabel {
        label.text = detail.todoDescription?.description ?? "NO_DESCRIP"
      }
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    configureView()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  var detailItem: ToDo? {
    didSet {
      // Update the view.
      configureView()
    }
  }
}

