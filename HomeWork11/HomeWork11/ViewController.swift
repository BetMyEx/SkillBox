//
//  ViewController.swift
//  HomeWork11
//
//  Created by Admin on 14.01.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }


}
extension ViewController: SegmentViewDelegate {
    func segmentPressed(_ segmentView: SegmentView) {
        print("Delegate\(segmentView.position)")
    }
}
