//
//  ViewController.swift
//  TConverter
//
//  Created by Lashaun Corinna on 11/12/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 233
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanges(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        let farenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(farenheitTemperature)ºF"
        
    }
}

