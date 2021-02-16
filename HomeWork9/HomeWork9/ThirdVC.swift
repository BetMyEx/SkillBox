//
//  ThirdVC.swift
//  HomeWork9
//
//  Created by Admin on 12.12.2020.
//

import UIKit

class ThirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
  
    @IBOutlet weak var heightLabel: NSLayoutConstraint!
    
    @IBAction func switchHeight(_ sender: Any) {
        if heightLabel.constant == 20 {
            heightLabel.constant = 103
        } else {
            heightLabel.constant = 20
        }
    }
}

