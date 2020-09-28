//
//  ViewController.swift
//  BMICalcApp
//
//  Created by Masayuki WATANABE on 2020/09/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var weight: UITextField!
    
    @IBOutlet weak var bmiText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.height.keyboardType = UIKeyboardType.decimalPad
        self.weight.keyboardType = UIKeyboardType.decimalPad
        
    }

    @IBAction func calcBmi(_ sender: Any) {
        let dHeight = Double(height.text!)
        let dWeight = Double(weight.text!)
        let dHeight2 = dHeight! * dHeight!
        var bmiRound = (dWeight! / dHeight2) * 100
        bmiRound = round(bmiRound)
        
        let bmi = String(bmiRound / 100)
        //まるめ（四捨五入）は１００倍にして、Round、その後１００でわる、
        
        
        bmiText.text = ("あなたのBMIは " + bmi + " です！")
    }
    
}

