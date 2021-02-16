//
//  InViewController.swift
//  HomeWork7
//
//  Created by Admin on 06.12.2020.
//

import UIKit

protocol SecViewControllerDelegate {
    func outColorChange(_ color: UIColor)
}
class SecViewController: UIViewController {
    
    var delegate: SecViewControllerDelegate?
    
    var inBackColor =  UIColor.clear {
        didSet {view.backgroundColor = inBackColor}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = inBackColor
    }
    
    @IBAction func outGreenColor(_ sender: Any) {
        delegate?.outColorChange(UIColor.green)
        //dismiss(animated: true, completion: nil)
    }
    
    @IBAction func outYellowColor(_ sender: Any) {
        delegate?.outColorChange(UIColor.yellow)
      //  dismiss(animated: true, completion: nil)
    }
    
    @IBAction func outPurpleColor(_ sender: Any) {
        delegate?.outColorChange(UIColor.purple)
        //dismiss(animated: true, completion: nil)
    }
    
}


