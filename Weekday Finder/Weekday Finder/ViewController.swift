//
//  ViewController.swift
//  Weekday Finder
//
//  Created by Lashaun Corinna on 11/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func findDay(_ sender: Any) {
        guard dateTextField.text != "" && monthTextField.text != "" && yearTextField.text != "" else { resultLabel.text = "Fields should not be empty"
            return }
        
        if Int(dateTextField.text!) != nil && Int(monthTextField.text!) != nil && Int(yearTextField.text!) != nil {
            let calendar = Calendar.current
            
            let date = Int(dateTextField.text!)
            let month = Int(monthTextField.text!)
            let years = Int(yearTextField.text!)
            guard date! <= 31 && date! > 0 && month! > 0 && month! < 13  && years! > 0 else { resultLabel.text = "Error of input values. Try again"
                return }
            
            var dateComponents = DateComponents()
            dateComponents.day = date
            dateComponents.month = month
            dateComponents.year = years
            
            let dataFormatter = DateFormatter()
            dataFormatter.dateFormat = "EEEE"
            dataFormatter.locale = Locale(identifier: "en_En")
            
            guard let date = calendar.date(from: dateComponents) else { return }
            let weekday = dataFormatter.string(from: date)
            let capitalizedWeekday = weekday.capitalized
            
            resultLabel.text = capitalizedWeekday
        } else {
            resultLabel.text = "Error of input values. Try again"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

