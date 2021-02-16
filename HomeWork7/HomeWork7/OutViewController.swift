//
//  OutViewController.swift
//  HomeWork7
//
//  Created by Admin on 06.12.2020.
//

import UIKit

class OutViewController: UIViewController {
    var toInBackColor = UIColor.clear
    var outBackColor = UIColor.white
    var finalOutColor = UIColor.white
    
    private var secVC: SecViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SecViewController, segue.identifier == "inOutSegue" {
            secVC = vc
           // vc.inBackColor = toInBackColor
            vc.delegate = self
        }
    }
    @IBAction func inGreenButton(_ sender: Any) {
        toInBackColor = UIColor.green
        secVC?.inBackColor = toInBackColor
        updateOutColor()
       // performSegue(withIdentifier: "inOutSegue", sender: nil)
    }
    
    @IBAction func inYellowButton(_ sender: Any) {
        toInBackColor = UIColor.yellow
        secVC?.inBackColor = toInBackColor
        updateOutColor()
      //  performSegue(withIdentifier: "inOutSegue", sender: nil)
    }
    
    @IBAction func inPurpleColor(_ sender: Any) {
        toInBackColor = UIColor.purple
        secVC?.inBackColor = toInBackColor
        updateOutColor()
       // performSegue(withIdentifier: "inOutSegue", sender: nil)
    }
    func updateOutColor() {
        self.view.backgroundColor = finalOutColor
    }
}
extension OutViewController: SecViewControllerDelegate{
    func outColorChange(_ color: UIColor) {
        self.finalOutColor = color
        updateOutColor()
    }
    
    
}


