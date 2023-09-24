//
//  ViewController.swift
//  BasicCalculatorApp
//
//  Created by Burak on 24.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    var resultF : Float = 0 // float sonuc degeri
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addClicked(_ sender: Any) {
        if let firstValue = Int(firstText.text!){
            if let secondValue = Int(secondText.text!){
                
                let result :Int  = firstValue + secondValue
                resultLabel.text = String(result)
            }
        }
            
    }
    
    @IBAction func subtractClicked(_ sender: Any) {
        if let firstValue = Int(firstText.text!){
            if let secondValue = Int(secondText.text!){
                
                result = firstValue - secondValue
                resultLabel.text = String(result)
            }
        }
        
    }
    
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstValue = Int(firstText.text!){
            if let secondValue = Int(secondText.text!){
                
                result = firstValue * secondValue
                resultLabel.text = String(result)
            }
        }
        
    }
    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstValue = Float(firstText.text!){
            if let secondValue = Float(secondText.text!){
                
                resultF = firstValue / secondValue
                resultLabel.text = String(resultF)
            }
        }
        
    }
    
}

