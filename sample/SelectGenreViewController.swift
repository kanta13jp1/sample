//
//  SelectGenreViewController.swift
//  sample
//
//  Created by 梅澤寛太 on 2022/02/10.
//

import UIKit

class SelectGenreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func genreButtonAction(sender: UIButton) {
        print(sender.tag)
        performSegue(withIdentifier: "toLevelSelectVC", sender: nil)
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
