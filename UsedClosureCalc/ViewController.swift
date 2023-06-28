//
//  ViewController.swift
//  UsedClosureCalc
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var number1: Int = 0
    var number2: Int = 0
    
    var calcFunc: (Int, Int) -> Int = { (number1: Int, number2: Int) -> Int in
        return number1 + number2
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func fisrtSlider(_ sender: UISlider) {
        
        number1 = Int(sender.value)
        firstLabel.text = String(number1)
        firstLabel.isEnabled = true
    }
    
    @IBAction func secondSlider(_ sender: UISlider) {
        
        number2 = Int(sender.value)
        secondLabel.text = String(number2)
        secondLabel.isEnabled = true
        
    }
    
    
    @IBAction func plusButton(_ sender: UIButton) {
        calcFunc = { (number1: Int, number2: Int) -> Int in
            return number1 + number2
        }
    }
    
    @IBAction func subtractButton(_ sender: UIButton) {
        calcFunc = { (number1: Int, number2: Int) -> Int in
            return number1 - number2
        }
        
    }
    
    @IBAction func multipleButton(_ sender: UIButton) {
        
        calcFunc = { (number1: Int, number2: Int) -> Int in
            return number1 * number2
        }
        
    }
    
    @IBAction func divideButton(_ sender: UIButton) {
        
        calcFunc = { (number1: Int, number2: Int) -> Int in
            return number1 / number2
        }
        
    }
    
    
    @IBAction func resultButton(_ sender: UIButton) {
        let result: Int = calcFunc(number1, number2)
        resultLabel.text = "\(result)"
        resultLabel.isEnabled = true
    }
    
    
}

