//
//  StopwatchViewController.swift
//  sample
//
//  Created by 梅澤寛太 on 2022/02/11.
//

import UIKit

class StopwatchViewController: UIViewController {
    
    @IBOutlet var elapsedTimeLabel: UILabel!
    
    let dateFormatter = DateFormatter()
    
    var elapsedTimeAtStop: TimeInterval = 0
    var dateAtStart: Date?
    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateFormat = "mm:ss.S"
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        updateElapsedTime()
        // Do any additional setup after loading the view.
    }
    
    func updateElapsedTime() {
        elapsedTimeLabel.text = dateFormatter.string(from: dateForFormatter())
    }

    @objc func updateElapsedTime(timer: Timer) {
        elapsedTimeLabel.text = dateFormatter.string(from: dateForFormatter())
    }

    private func dateForFormatter() -> Date {
        if let startDate = self.dateAtStart {
            let intervalSinceStart = Date().timeIntervalSince(startDate)
            let totalElapsedTime = elapsedTimeAtStop + intervalSinceStart
            return Date(timeIntervalSince1970: totalElapsedTime)
        }
        return Date(timeIntervalSince1970: elapsedTimeAtStop)
    }
    
    
    @IBAction func startButtonTapped(_ sender: Any) {
        if dateAtStart == nil {
            dateAtStart = Date()
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.updateElapsedTime(timer:)), userInfo: nil, repeats: true)

        }
    }
     @IBAction func stopButtonTapped(_ sender: Any) {
        if let startDate = dateAtStart {
            elapsedTimeAtStop += Date().timeIntervalSince(startDate)
        } else {
            elapsedTimeAtStop = 0
        }
        
        timer?.invalidate()
        timer = nil
        dateAtStart = nil
        updateElapsedTime()
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
