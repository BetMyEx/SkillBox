//
//  ChooseViewController.swift
//  HomeWork7
//
//  Created by Admin on 05.12.2020.
//

import UIKit
protocol ChooseViewControllerDelegate {
    func pickColor(_ color: String)
}

class ChooseViewController: UIViewController {
    var chosenColor = ""
    override func viewDidLoad() {
        textColor.text = chosenColor
        super.viewDidLoad()
    }
    var delegate: ChooseViewControllerDelegate?

    
    @IBOutlet weak var textColor: UITextField!
    
   
    @IBAction func greenColor(_ sender: Any) {
        textColor.text = "Выбран зеленый"
        dismiss(animated: true, completion: nil)
        delegate?.pickColor(textColor.text!)
    }
    
    @IBAction func redColor(_ sender: Any) {
        textColor.text = "Выбран красный"
        dismiss(animated: true, completion: nil)
        delegate?.pickColor(textColor.text!)
    }
    
    @IBAction func blueColor(_ sender: Any) {
        textColor.text = "Выбран синий"
        dismiss(animated: true, completion: nil)
        delegate?.pickColor(textColor.text!)
    }
    
}

