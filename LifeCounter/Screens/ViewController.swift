//
//  ViewController.swift
//  LifeCounter
//
//  Created by Даниил on 22.03.2025.
//

import UIKit


final class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet private var resultNumberLabel: UILabel!
    @IBOutlet private var datePicker: UIDatePicker!

    // MARK: - Private Properties
    private var numberDays: Int?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.maximumDate = Date()
        datePicker.setValue(UIColor.black, forKey: "textColor")
    }

    // MARK: - Actions
    @IBAction private func datePickerChanged(_ sender: UIDatePicker) {
        let calendar = Calendar.current
        let startDate = sender.date
        let endDate = Date()

        let components = calendar.dateComponents([.day], from: startDate, to: endDate)

        if let days = components.day {
            numberDays = days
        }
    }

    @IBAction private func resultButtonClicked() {
        if let days = numberDays {
            resultNumberLabel.text = "\(days)"
        } else {
            resultNumberLabel.text = "Дата?"
        }
    }
}
