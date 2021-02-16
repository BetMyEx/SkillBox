//
//  TextViewController.swift
//  HomeWork7
//
//  Created by Admin on 05.12.2020.
//

import UIKit

class TextViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ChooseViewController, segue.identifier == "changeColor" {
            vc.chosenColor = colorLabel.text!
            vc.delegate = self
        }
    }
    @IBAction func changeButton(_ sender: Any) {
        performSegue(withIdentifier: "changeColor", sender: nil)
    }
    
 
    
}
extension TextViewController: ChooseViewControllerDelegate {
    func pickColor(_ color: String) {
        colorLabel.text = "\(color)"
    }
}
    


