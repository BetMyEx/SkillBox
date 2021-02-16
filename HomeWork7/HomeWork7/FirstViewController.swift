//
//  FirstViewController.swift
//  HomeWork7
//
//  Created by Admin on 07.12.2020.
//

import UIKit

class FirstViewController: UIViewController {
var transName = ""
    var transColor = UIColor.white
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? NavViewController, segue.identifier == "navSegue"{
            vc.nameTop = transName
            vc.backColor = transColor
        }
    }
    @IBAction func greenNavButton(_ sender: Any) {
        transName = "Green"
        transColor = UIColor.green
        performSegue(withIdentifier: "navSegue", sender: nil)
        
    }
    @IBAction func yellowNavButton(_ sender: Any) {
        transName = "Blue"
        transColor = UIColor.blue
        performSegue(withIdentifier: "navSegue", sender: nil)
    }
    @IBAction func redNavButton(_ sender: Any) {
        transName = "Red"
        transColor = UIColor.red
        performSegue(withIdentifier: "navSegue", sender: nil)
    }
    
    
    
}
