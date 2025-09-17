//
//  ViewController.swift
//  Week3_DatePicker
//
//  Created by 공학관 559 on 9/17/25.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector : Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    //var alaramTime = Date()
    @IBOutlet var lblCurrentTime: UILabel!
    
    @IBOutlet var lblPickerTime: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector:timeSelector, userInfo: nil, repeats: true)
    
    }
//hihi

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        
        let datePickerView = sender
        
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblPickerTime.text = formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
        
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text = formatter.string(from: date as Date)
    
        if(lblCurrentTime.text == lblPickerTime.text)
        {
            view.backgroundColor = UIColor.red
        }
        else
        {
            view.backgroundColor = UIColor.white
        }
        
    
    }
}

