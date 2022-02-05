//
//  SampleViewController.swift
//  sample
//
//  Created by 梅澤寛太 on 2022/02/05.
//

import UIKit

class SampleViewController: UIViewController {

    var csvArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        csvArray = loadCSV(fileName: "quiz")
        print(csvArray)
        
        // Do any additional setup after loading the view.
    }
    
    // ボタンを押したときに呼ばれる
    @IBAction func btnAction(sender: UIButton) {
        print(sender.tag)
    }
    
    func loadCSV(fileName: String) -> [String] {
        print(fileName)
        let csvBundle = Bundle.main.path(forResource: fileName, ofType: "csv")!
        do {
            let csvData = try String(contentsOfFile: csvBundle, encoding: String.Encoding.utf8)
            print(csvData)
            let lineChange = csvData.replacingOccurrences(of: "\r", with: "\n")
            print(lineChange)
            csvArray = lineChange.components(separatedBy: "\n")
            print(csvArray)
            csvArray.removeLast()
        } catch {
            print("エラー")
        }
        return csvArray
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