//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Arnold Tjiawi on 15/06/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    
    
    mutating func calculateBMI(h: Float, w: Float)  {
        let bmiValue = w/(h*h)
        
        if bmiValue  < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4160958904, green: 0.7935306079, blue: 0.9794632834, alpha: 1))
        }  else if bmiValue > 24.9{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9607843161, green: 0.8135166952, blue: 0.156255354, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.2649243397, green: 0.757223887, blue: 0.2255458048, alpha: 1))
            
        }
        
    }
    
    func getBMIValue()->String{
        let bmiToString = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiToString
    }
    
    func getAdvice()->String{
        return bmi?.advice ?? "advice not found"
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.white
    }
}
