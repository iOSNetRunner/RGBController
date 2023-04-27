//
//  ViewController.swift
//  RGBController
//
//  Created by Dmitrii Galatskii on 27.04.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var selectedColorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedColorView.layer.cornerRadius = 15
    }


}

