//
//  ViewController.swift
//  HomeWork8
//
//  Created by Admin on 08.12.2020.
//

import UIKit

var images = [UIImage(named: "img1"),
              UIImage(named: "img2"),
              UIImage(named: "img3"),
              UIImage(named: "img4"),
              UIImage(named: "img5"),
              UIImage(named: "img6"),
              UIImage(named: "img7"),
              UIImage(named: "img8"),
              UIImage(named: "img9"),
              UIImage(named: "img10")]

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        galeryWindow.image = images[0]
    }
    
    @IBOutlet weak var galeryWindow: UIImageView!
    
    var currentImage = 0
    
    @IBAction func backButton(_ sender: Any) {
        if currentImage == 0 {
            currentImage = 0
        } else {
        currentImage -= 1
        }
        galeryWindow.image = images[currentImage]
    }
    @IBAction func nextButton(_ sender: Any) {
        if currentImage == images.count - 1 {
            currentImage = images.count - 1
        }else{
            currentImage += 1
        }
        galeryWindow.image = images[currentImage]
    }
    
    
}

