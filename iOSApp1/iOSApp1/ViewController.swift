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
    var currentValue = 2
    var mResult = 0
    var sResult = 0
    var isClicked = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //func reacting on a click button event
    @IBAction func buttonTapped(_ sender: UIButton) {
        //first click and calling the results func, toggling click state
        if isClicked{
            isClicked = false
            Results()
        }
        //if button click state is in false, then call for reset func
        else{
            reset()
        }
       }
    
    // func for the slider's value change
    @IBAction func sliderMove(_ slider: UISlider) {
        // Update the current value based on the slider's position
        currentValue = lroundf(slider.value)
        // Updating the label to show the current value
        pickedNumber.text = "\(currentValue)"
    }
    
    // func for calculating and displaying results
    @IBAction func Results() {
        mResult = currentValue * currentValue // Calculate the multiplication and sum results
        sResult = currentValue + currentValue
        // calling the printing results func
        printResults()
    }
    
    // func to display the results and change the button title and disabling the slider
    @IBAction func printResults() {
        // Updating the labels with the results
        mLabel.text = "\(mResult)"
        sumLabel.text = "\(sResult)"
        button.setTitle("Reset", for: .normal)
        slider.isEnabled = false
    }
    //reseting all labels and changing the button title, bringing the slider to it's original position
    //enabling the slider
    @IBAction func reset(){
                button.setTitle("Let's Go!", for: .normal)
                currentValue = 2
                sumLabel.text = " "
                mLabel.text = " "
                pickedNumber.text = " "
                slider.value = 0
                isClicked = true
                slider.isEnabled = true
    }
}
