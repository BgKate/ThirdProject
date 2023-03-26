//
//  ViewController.swift
//  ThirdProject
//
//  Created by Ekaterina Bogdanova on 26/03/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var screenColor: UIView!
      
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        screenColor.layer.cornerRadius = 15
        setUpRedSlider()
        setUpGreenSlider()
        setUpBlueSlider()
    }

    
      @IBAction func actionRedSlider() {
          redLabel.text = redSlider.value.formatted()
          changingViewColor()
      }
      
      @IBAction func actionGreenslider() {
          greenLabel.text = greenSlider.value.formatted()
          changingViewColor()
      }
      
      @IBAction func actionBlueSlider() {
          blueLabel.text = blueSlider.value.formatted()
          changingViewColor()
      }
    
    
    private func changingViewColor() {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        screenColor.backgroundColor = UIColor(
            red: redValue,
            green: greenValue,
            blue: blueValue,
            alpha: 1
        )
    }
    
  
    private func setUpRedSlider() {
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
    }
    
    private func setUpGreenSlider() {
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
    }
    
    private func setUpBlueSlider() {
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
    }
    
}

