//
//  ViewController.swift
//  UnitConverter
//
//  Created by Ch Pranay on 10/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var convertTemp: UIButton!
    @IBOutlet weak var tempText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func convertTemp(_ sender: Any) {
        guard let checkText = tempText.text,!checkText.isEmpty,var fahernhit = Double (checkText)
        else{
            resultLabel.text = "You did not entered any number"
            return
        }

        
        resultLabel.text = "Your Tempterature is :\(checkText) and fahernhit is : \(fahernhit * (9/5)+32)"
    }
    
}
