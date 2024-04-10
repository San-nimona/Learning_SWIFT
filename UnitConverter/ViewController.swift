//
//  ViewController.swift
//  UnitConverter
//
//  Created by katu on 10/04/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func textFieldReturn(_ sender: UITextField) {
        _ = sender.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tempText.endEditing(true)
    }
    @IBAction func convertFahr(_ sender: Any) {
        guard let num = tempText.text,
              let rawValue = Double(num)
        else {
            let invalidText = "Invalid input. Please enter a number."
            resultLabel.text = invalidText
            return
        }
        let fahrenheitValue = (rawValue*5.0/9.0) + 32.0
        resultLabel.text = "\(fahrenheitValue)"
    }
    @IBAction func convertTemp(_ sender: Any) {
        guard let num = tempText.text,
              let rawValue = Double(num)
        else {
            let invalidText = "Invalid input. Please enter a number."
            resultLabel.text = invalidText
            return
        }
        let celsiusValue = (rawValue - 32.0) * 5.0/9.0
        
        resultLabel.text = "\(celsiusValue)"
    }
}

