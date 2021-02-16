//
//  NavViewController.swift
//  HomeWork7
//
//  Created by Admin on 07.12.2020.
//

import UIKit

class NavViewController: UIViewController {
    var backColor = UIColor.white
    var nameTop = ""
    
    override func viewDidLoad() {
        self.view.backgroundColor = backColor
        self.navigationItem.title = nameTop
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
