//
//  ViewController.swift
//  Temp converter after homework
//
//  Created by adrians.freimanis on 19/04/2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var DescriptionLabel: UILabel!
    
    @IBOutlet weak var InputLabel: UILabel!
    
    @IBOutlet weak var MySlider: UISlider!{
        didSet{
            MySlider.minimumValue = 0
            MySlider.maximumValue = 100
            MySlider.value = 0
        }
    }
    
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    @IBOutlet weak var MySegment: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DescriptionLabel.layer.cornerRadius = 10.0
        DescriptionLabel.clipsToBounds = true
        
        InputLabel.layer.cornerRadius = 10.0
        InputLabel.clipsToBounds = true
        
        InputLabel.text = "Here is your C ° input: "
        
        
        ResultLabel.layer.cornerRadius = 10.0
        ResultLabel.clipsToBounds = true
        
        
        let selectedSegmentIndex = MySegment.selectedSegmentIndex
        
        
        switch selectedSegmentIndex {
        case 0:
            ResultLabel.text = "F"
        case 1:
            ResultLabel.text = "K"
        default:
            break
        }
        
    }
    
    
    @IBAction func modeButtonPressed(_ sender: UIButton) {
        if self.traitCollection.userInterfaceStyle == .dark {
            self.overrideUserInterfaceStyle = .light
        } else {
            self.overrideUserInterfaceStyle = .dark
        }
    }
    
    
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        updateInputLabelValue(value: MySlider.value)
        updateResultLabelValue(value: MySlider.value)
    }
    
    
    func updateResultLabelValue(value: Float){
        
        let celciusTemp = Double(value)
        var convertedTemp: Double = 0
        let selectedSegmentIndex = MySegment.selectedSegmentIndex
        
        switch selectedSegmentIndex {
        case 0: // Fahrenheit
            convertedTemp = celciusTemp * 1.8 + 32
            ResultLabel.text = String(format: "%.1f F°", convertedTemp)
        case 1: // Kelvin
            convertedTemp = celciusTemp + 273.15
            ResultLabel.text = String(format: "%.1f K", convertedTemp)
        default:
            break
        }
        
    }
    
    
        func updateInputLabelValue(value: Float){
            print(value)
    
            let celciusTemp = Int(value)
            InputLabel.text = "Here is your C° input: \(celciusTemp) C°"
//            var convertedTempString = ""
            #warning("switch case, convertedTempString = convertTempFrom(celsius: celciusTemp)")
        }
    
    
    @IBAction func segmentValueChanged(_ sender: Any) {
        updateInputLabelValue(value: MySlider.value)
        updateResultLabelValue(value: MySlider.value)
    }
    

}

