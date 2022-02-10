//
//  SelectGenreViewController.swift
//  sample
//
//  Created by 梅澤寛太 on 2022/02/10.
//

import UIKit

class SelectGenreViewController: UIViewController {

    var selectTag = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selectLevelVC = segue.destination as! SelectLevelViewController
        selectLevelVC.selectGenre = selectTag
    }
    
    @IBAction func genreButtonAction(sender: UIButton) {
        print(sender.tag)
        selectTag = sender.tag
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
