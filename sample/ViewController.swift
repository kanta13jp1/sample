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
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UITabBar.appearance().tintColor = UIColor.red
        
        self.setTabBarItem(
            index:0,
            titile: "クイズ",
            image: UIImage(named: "tab_home_off")!,
            selectedImage: UIImage(named: "tab_home_on")!,
            offColor: UIColor.blue,
            onColor: UIColor.red)
        self.setTabBarItem(
            index:1,
            titile: "時計",
            image: UIImage(named: "tab_home_off")!,
            selectedImage: UIImage(named: "tab_home_on")!,
            offColor: UIColor.blue,
            onColor: UIColor.red)
        self.setTabBarItem(
            index:2,
            titile: "ストップウォッチ",
            image: UIImage(named: "tab_home_off")!,
            selectedImage: UIImage(named: "tab_home_on")!,
            offColor: UIColor.blue,
            onColor: UIColor.red)
    }

    func setTabBarItem(index: Int, titile: String, image: UIImage, selectedImage: UIImage, offColor: UIColor, onColor: UIColor) -> Void {
        let tabBarItem = self.tabBarController?.tabBar.items![index]
        tabBarItem!.title = title
        tabBarItem!.image = image.withRenderingMode(.alwaysOriginal)
        tabBarItem!.selectedImage = selectedImage.withRenderingMode(.alwaysOriginal)
        tabBarItem!.setTitleTextAttributes([ . foregroundColor: offColor], for: .normal)
        tabBarItem!.setTitleTextAttributes([ . foregroundColor: onColor], for: .selected)
    }
}

