//
//  ViewController.swift
//  sample
//
//  Created by kanta13jp1 on 2022/02/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var startButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.borderWidth = 2
        startButton.layer.borderColor = UIColor.black.cgColor
        // Do any additional setup after loading the view.
    }


}

