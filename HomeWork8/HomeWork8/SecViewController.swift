//
//  SecViewController.swift
//  HomeWork8
//
//  Created by Admin on 08.12.2020.
//

import UIKit
let imagesSec = [UIImage(named: "img1"),
              UIImage(named: "img2"),
              UIImage(named: "img3"),
              UIImage(named: "img4")]

let nameLabel = ["Кофта1",
                 "Кофта2",
                 "Кофта3",
                 "Кофта4"]
let oldPrices = ["30 000 руб",
                 "40 000 руб",
                 "20 000 руб",
                 "30 999 руб"]

let prices = ["3 000 руб",
                  "4 000 руб",
                  "2 000 руб",
                  "3 999 руб"]

class SecViewController: UIViewController {
    
    override func viewDidLoad() {
        let imageWidth = Double(self.view.frame.width)/2 - 30
        let imageHeight = imageWidth * 1.5
        var imageY = 10
        var imageX = 10
        var yCount = 0
        super.viewDidLoad()
        for index in 0...imagesSec.count - 1 {
            
            //задаём изображение
            let object = UIImageView()
            object.image = imagesSec[index]
            if index % 2 == 0 {
                imageX = 10
                yCount += 1
            } else {
                imageX = Int(self.view.frame.width)/2+10
            }
            if yCount % 2 == 0 {
            }
            imageY = yCount * Int(imageHeight/1.5)
        
            if index == 0 || index == 1 {
                object.frame = CGRect(x: imageX, y: 10, width: Int(imageWidth), height: Int(imageHeight))
            } else {
                object.frame = CGRect(x: imageX, y: imageY, width: Int(imageWidth), height: Int(imageHeight))
            }
            //задаём старую цену
            let oldPrice = UILabel()
            oldPrice.text = oldPrices[index]
            oldPrice.textColor = UIColor.black
            oldPrice.font = .boldSystemFont(ofSize: 10)
           let crossedOldPrice: NSMutableAttributedString =  NSMutableAttributedString(string:oldPrice.text!)
                crossedOldPrice.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, crossedOldPrice.length))
            oldPrice.attributedText = crossedOldPrice
            let oldPriceWidth = imageWidth
            let oldPriceHeight = 10
            let oldPriceY = imageY + Int(imageHeight) + 5
            let firstLineOldPriceY = 10 + Int(imageHeight) + 5
            let oldPriceX = imageX
            if index == 0 || index == 1 {
                oldPrice.frame = CGRect(x: oldPriceX, y: firstLineOldPriceY, width: Int(oldPriceWidth), height: oldPriceHeight)
            } else {
                oldPrice.frame = CGRect(x: oldPriceX, y: oldPriceY, width: Int(oldPriceWidth), height: oldPriceHeight)           }
            //задаём цену
            let priceLabel = UILabel()
            priceLabel.text = prices[index]
            priceLabel.textColor = UIColor.red
            priceLabel.font = UIFont.boldSystemFont(ofSize: 18)
            let priceLabelWidth = imageWidth
            let priceLabelHeight = 20
            let firstLinePriceY = firstLineOldPriceY + oldPriceHeight + 2
            let priceLabelX = imageX
            let priceLabelY = oldPriceY + oldPriceHeight + 2
            if index == 0 || index == 1 {
                priceLabel.frame = CGRect(x: priceLabelX, y: firstLinePriceY, width: Int(priceLabelWidth), height: priceLabelHeight)
            } else {
                priceLabel.frame = CGRect(x: priceLabelX, y: priceLabelY, width: Int(priceLabelWidth), height: priceLabelHeight)            }
            //задаём название
            let nameGoodLabel = UILabel()
            nameGoodLabel.text = nameLabel[index]
            nameGoodLabel.textColor = UIColor.lightGray
            let nameGoodLabelWidth = imageWidth
            let nameGoodLabelHeight = 15
            let nameGoodLabelY = priceLabelY + Int(priceLabelHeight) + 5
            let nameGoodLabelX = priceLabelX
            let firstLineNameGoodLabelY = firstLinePriceY + priceLabelHeight + 2
            if index == 0 || index == 1 {
                nameGoodLabel.frame = CGRect(x: nameGoodLabelX, y: firstLineNameGoodLabelY, width: Int(nameGoodLabelWidth), height: nameGoodLabelHeight)
            } else {
                nameGoodLabel.frame = CGRect(x: nameGoodLabelX, y: nameGoodLabelY, width: Int(nameGoodLabelWidth), height: nameGoodLabelHeight)            }
           
            
            view.addSubview(object)
            view.addSubview(oldPrice)
            view.addSubview(priceLabel)
            view.addSubview(nameGoodLabel)
        }
    }
}

         
          

   
