//
//  ViewController.swift
//  LifeCounter
//
//  Created by Даниил on 22.03.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var resultNumberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.maximumDate = Date()
    }
    private var numberDays: Int?
    
    @IBAction func datePickerChanged(_ sender: UIDatePicker) {
        let calendar = Calendar.current
        let startDate = sender.date
        let endDate = Date()
        let components = calendar.dateComponents([.day], from: startDate, to: endDate)
        if let days = components.day {
            numberDays = days
            
        }
    }
    
    
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        if let days = numberDays {
            resultNumberLabel.text = "\(days)"
        } else {
            resultNumberLabel.text = "Выберите дату"
        }
    }
    
    
}

