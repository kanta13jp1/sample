//
//  SampleViewController.swift
//  sample
//
//  Created by 梅澤寛太 on 2022/02/05.
//

import UIKit

class SampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // ボタンを押したときに呼ばれる
    @IBAction func btnAction(sender: UIButton) {
        print(sender.tag)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
