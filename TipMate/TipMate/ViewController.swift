//
//  ViewController.swift
//  TipMate
//
//  Created by Michael Mcmanus on 12/13/18.
//  Copyright © 2018 Michael Mcmanus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabe: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel2: UILabel!
    @IBOutlet weak var totalLabel3: UILabel!
    @IBOutlet weak var totalLabel4: UILabel!
    
    
    
    let vc = UIViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder()
        
    }

    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
        
    }
    
    @IBAction func calcTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let total2 = (bill + tip) / 2
        let total3 = (bill + tip) / 3
        let total4 = (bill + tip) / 4
        
    
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabe.text = String(format: "$%.2f", total)
        totalLabel2.text = String(format: "$%.2f", total2)
        totalLabel3.text = String(format: "$%.2f", total3)
        totalLabel4.text = String(format: "$%.2f", total4)
    }
    
    

}

