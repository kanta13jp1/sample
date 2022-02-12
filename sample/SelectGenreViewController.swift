//
//  SelectGenreViewController.swift
//  sample
//
//  Created by 梅澤寛太 on 2022/02/10.
//

import UIKit

class SelectGenreViewController: UIViewController {

    @IBOutlet var genre1Button: UIButton!
    @IBOutlet var genre2Button: UIButton!
    @IBOutlet var genre3Button: UIButton!
    var selectTag = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        genre1Button.layer.borderWidth = 2
        genre1Button.layer.borderColor = UIColor.black.cgColor

        genre2Button.layer.borderWidth = 2
        genre2Button.layer.borderColor = UIColor.black.cgColor

        genre3Button.layer.borderWidth = 2
        genre3Button.layer.borderColor = UIColor.black.cgColor
        
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
