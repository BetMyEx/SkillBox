//
//  CustomButton.swift
//  HomeWork11
//
//  Created by Admin on 14.01.2021.
//

import UIKit

//@IBDesignable
class CustomButton: UIButton {

   var isSetuped = false
    @IBInspectable var radius:CGFloat = 5
    @IBInspectable var borderSize:CGFloat = 4
    @IBInspectable var borderColor: UIColor = .red
    override func layoutSubviews() {
        super.layoutSubviews()
        if isSetuped {return}
        isSetuped = true
        layer.cornerRadius = radius
        layer.borderWidth = borderSize
        layer.borderColor = borderColor.cgColor
        clipsToBounds = true
    }
}
