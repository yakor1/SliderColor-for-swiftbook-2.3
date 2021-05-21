//
//  ViewController.swift
//  SliderColor
//
//  Created by Яков Z on 21.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
        
        labelOne.numberOfLines = 3
        labelTwo.numberOfLines = 3
        labelThree.numberOfLines = 3
        
        redSlider.thumbTintColor = .red
        greenSlider.thumbTintColor = .green
        blueSlider.thumbTintColor = .blue
        
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        
        
    }

    @IBAction func changedValueSlider() {
        labelOne.text = "Red: \(String(redSlider.value))"
        labelTwo.text = "Green: \(String(greenSlider.value))"
        labelThree.text = "Blue: \(String(greenSlider.value))"
        
        
        var redValue = CGFloat(redSlider.value)
        var greenValue = CGFloat(greenSlider.value)
        var blueValue = CGFloat(blueSlider.value)

        colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
    }
   
}
    

