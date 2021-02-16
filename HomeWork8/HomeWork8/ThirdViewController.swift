//
//  ThirdViewController.swift
//  HomeWork8
//
//  Created by Admin on 08.12.2020.
//

import UIKit

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testView1 = FirstVC().view
        testView2 = SecondVC().view
        testView3 = ThirdVC().view
       
        
        
        testView.addSubview(testView1)
        testView.addSubview(testView2)
        testView.addSubview(testView3)
        testView.bringSubviewToFront(testView1)
    }

    @IBOutlet weak var testView: UIView!
    var testView1: UIView!
    var testView2: UIView!
    var testView3: UIView!
    @IBAction func testSegmented(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            testView.bringSubviewToFront(testView1)
            testView1.isHidden = false
            testView2.isHidden = true
            testView3.isHidden = true
            break
        case 1:
            testView.bringSubviewToFront(testView2)
            testView1.isHidden = true
            testView2.isHidden = false
            testView3.isHidden = true
            break
        case 2:
            testView.bringSubviewToFront(testView3)
            testView1.isHidden = true
            testView2.isHidden = true
            testView3.isHidden = false
            break
        default:
            break
        }
    }
}
