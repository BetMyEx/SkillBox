//
//  ViewController.swift
//  HomeWork6_6
//
//  Created by Admin on 30.11.2020.
//

import UIKit
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)

    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBAction func nameEnter(_ sender: Any) {
        outputLabel.text = nameField.text! + " " + outputLabel.text!
    }
    
    @IBOutlet weak var resultOfMult: UILabel!
    
    @IBOutlet weak var nuberOfMult: UITextField!

    @IBAction func multButton(_ sender: Any) {
        self.hideKeyboardWhenTappedAround()
        let num = Double(nuberOfMult.text!)
        if  num != nil {
            resultOfMult.text = (" \(pow(2, num!))")
        } else {
            resultOfMult.text = "Введите целое число"
        }
    }
    
    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var mathAction: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    
    @IBOutlet weak var resultOfMathAction: UILabel!
    
    @IBAction func calcualate(_ sender: Any) {
        let uno = firstNumber.text
        let duo = secondNumber.text
        if Double(uno!) == nil || Double(duo!) == nil {
            resultOfMathAction.text = "Некоректные данные"
        } else {
            switch mathAction.text {
        case "+":
            resultOfMathAction.text = "\(Int(uno!)! + Int(duo!)!)"
        case "-":
            resultOfMathAction.text = "\(Int(uno!)! - Int(duo!)!)"
        case "*":
            resultOfMathAction.text = "\(Int(uno!)! * Int(duo!)!)"
        case "/":
            resultOfMathAction.text = "\(Double(uno!)! / Double(duo!)!)"
        default:
            resultOfMathAction.text = "Некоректные данные"
        }
        }
    }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//        let firstNum = Int(firstNumber.text!)
//        let secondNum = Int(secondNumber.text!)
//        if firstNum != nil && secondNum != nil && mathAction.text == "+" {
//            resultOfMathAction.text = "\(firstNum! + secondNum!)"
//        } else if firstNum != nil && secondNum != nil && mathAction.text == "-" {
//                resultOfMathAction.text = "\(firstNum! - secondNum!)"
//        } else if firstNum != nil && secondNum != nil && mathAction.text == "*"{
//            resultOfMathAction.text = "\(firstNum! * secondNum!)"
//        } else if  firstNum != nil && secondNum != nil && mathAction.text == "/"{
//            resultOfMathAction.text = "\(Double(firstNum!) / Double(secondNum!))"
//        } else {
//            resultOfMathAction.text = "Некорректные данные"
//        }
    }
        

    
    
    
    
    
    
    
    

  

