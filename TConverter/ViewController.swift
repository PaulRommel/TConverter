//
//  ViewController.swift
//  TConverter
//
//  Created by Павел Попов on 14.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = -100
            slider.value = 0
        }
    }
      
    @IBAction func sliderChange(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        let fahrenheitTemperature = Int(round(sender.value * 9 / 5) + 32)
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.s
        
        mySwitch.isOn = true
        mySwitch.onTintColor = UIColor.gray
        mySwitch.addTarget(self, action: #selector(switchIsInAction(sender:)), for: UIControl.Event.valueChanged)
    }
    
    @objc func switchIsInAction(sender: UISwitch){
         
        if sender.isOn {
            let imageView = self.imageView
            imageView?.image = UIImage(named: "day")
        } else {
            let imageView = self.imageView
            imageView?.image = UIImage(named: "night")
        }
        
    }


}

