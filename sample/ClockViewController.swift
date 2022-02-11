//
//  ClockViewController.swift
//  sample
//
//  Created by 梅澤寛太 on 2022/02/11.
//

import UIKit

class ClockViewController: UIViewController {

    @IBOutlet var timeLabel: UILabel!
    
    var timer: Timer?
    let dateFormatter = DateFormatter()
    
    func updateTime() {
        timeLabel.text = dateFormatter.string(from: Date())
    }
    
    @objc func maintimeaction(timer: Timer) {
        updateTime()
        // 例えばLabelに表示や時間を加えたり減らしたりなど
    }
    
    func createTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.maintimeaction(timer:)), userInfo: nil, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateFormat = "hh:mm:ss"
        updateTime()
        // Do any additional setup after loading the view.
    }
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        createTimer()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer?.invalidate()
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
