//
//  SegmentView.swift
//  HomeWork11
//
//  Created by Admin on 19.01.2021.
//

import UIKit
//@IBDesignable
class Layer: UIView {
    @IBInspectable var backgroundColorOfLayer: UIColor = .red
    override func layoutSubviews() {
        backgroundColor = backgroundColorOfLayer
    }
}
@IBDesignable
class Segments: UIButton {
    @IBInspectable var segmentsBorderColor: UIColor = .red
    @IBInspectable var segmentText: String = "111"
    override func prepareForInterfaceBuilder() {
                super.prepareForInterfaceBuilder()
                updateViews()
            }

    override func awakeFromNib() {
                super.awakeFromNib()
                updateViews()
            }
    func updateViews(){
        layer.borderColor = segmentsBorderColor.cgColor
        layer.borderWidth = CGFloat(3)
        self.titleLabel?.text = segmentText
    }
    override func layoutSubviews() {
        
    }
}

protocol SegmentViewDelegate: NSObjectProtocol {
    func segmentPressed( _ segmentView: SegmentView)
}

weak var delegate: SegmentViewDelegate?

class SegmentView: UIView {
    
    var position = 1
    let duration: Double = 0.15
        
    @IBOutlet weak var back: UIView!
       
    @IBAction func firstButton(_ sender: UIButton) {
        sender.setTitle("Gogogo", for: .normal)
        if position == 2 {
            UIView.animate(withDuration: duration) { [self] in
                back.center.x -= frame.width / 2
            }
            position = 1
        }
        delegate?.segmentPressed(self)
    }

    @IBAction func secondButton(_ sender: Any) {
        if position == 1 {
            UIView.animate(withDuration: duration) { [self] in
                back.center.x += frame.width / 2
            }
            position = 2
        }
        delegate?.segmentPressed(self)
    }
}
