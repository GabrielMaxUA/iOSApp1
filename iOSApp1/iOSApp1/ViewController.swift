//
//  ViewController.swift
//  iOSApp1
//
//  Created by Max Gabriel on 2024-05-22.
//

import UIKit

class ViewController: UIViewController {
    // Outlets connected to UI elements
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var mLabel: UILabel!
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var pickedNumber: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    // Variables to store current value, multiplication result, and sum result
    var currentValue = 0
    var mResult = 0
    var sResult = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Action method for the slider's value change
    @IBAction func sliderMove(_ slider: UISlider) {
        // Update the current value based on the slider's position
        currentValue = lroundf(slider.value)
        // Update the label to show the current value
        pickedNumber.text = "\(currentValue)"
    }
    
    // Action method for calculating and displaying results
    @IBAction func Results() {
        // Calculate the multiplication and sum results
        mResult = currentValue * currentValue
        sResult = currentValue + currentValue
        // Display the results
        printResults()
    }
    
    // Method to display the results and toggle the button title
    @IBAction func printResults() {
        // Update the labels with the calculated results
        mLabel.text = "\(mResult)"
        sumLabel.text = "\(sResult)"
        // Reset the current value
        currentValue = 0
        // Toggle the button title between "Let's go" and "Reset"
        toggleButtonTitle()
    }
}
