//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Arnold Tjiawi on 14/06/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue : String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
         print(bmiValue)
        bmiLabel.text = bmiValue!
        adviceLabel.text = advice
        view.backgroundColor = color
       

        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    


}
