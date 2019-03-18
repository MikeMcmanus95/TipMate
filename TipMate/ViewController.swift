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
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabe: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel2: UILabel!
    @IBOutlet weak var totalLabel3: UILabel!
    @IBOutlet weak var totalLabel4: UILabel!
    @IBOutlet weak var totalLabel5: UILabel!
    @IBOutlet weak var personLabel1: UILabel!
    @IBOutlet weak var personLabel2: UILabel!
    @IBOutlet weak var personLabel3: UILabel!
    @IBOutlet weak var personLabel4: UILabel!
    @IBOutlet weak var personLabel5: UILabel!
    
    
    let vc = UIViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder()
        
        // Hides the labels until the bill field is edited
        totalLabe.alpha = 0
        personLabel1.alpha = 0
        totalLabel2.alpha = 0
        personLabel2.alpha = 0
        totalLabel3.alpha = 0
        personLabel3.alpha = 0
        totalLabel4.alpha = 0
        personLabel4.alpha = 0
        totalLabel5.alpha = 0
        personLabel5.alpha = 0
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let defaultTipIndex = defaults.integer(forKey: "selectedIndex")
        tipControl.selectedSegmentIndex = defaultTipIndex
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onEditingChanged(_ sender: Any) {
        if billField.text == "" {
            UIView.animate(withDuration: 0.2,animations: {
                self.totalLabe.alpha = 0
                self.personLabel1.alpha = 0
                self.totalLabel2.alpha = 0
                self.personLabel2.alpha = 0
                self.totalLabel3.alpha = 0
                self.personLabel3.alpha = 0
                self.totalLabel4.alpha = 0
                self.personLabel4.alpha = 0
                self.totalLabel5.alpha = 0
                self.personLabel5.alpha = 0
                
                //self.billField.center.y = 243
                self.totalLabe.center.y = 360
                self.personLabel1.center.y = 360
                self.totalLabel2.center.y = 360
                self.personLabel2.center.y = 360
                self.totalLabel3.center.y = 360
                self.personLabel3.center.y = 360
                self.totalLabel4.center.y = 360
                self.personLabel4.center.y = 360
                self.totalLabel5.center.y = 360
                self.personLabel5.center.y = 360
            }
            )
        } else {
            UIView.animate(withDuration: 0.2, animations: {
                self.totalLabe.alpha = 1
                self.personLabel1.alpha = 1
                self.totalLabel2.alpha = 1
                self.personLabel2.alpha = 1
                self.totalLabel3.alpha = 1
                self.personLabel3.alpha = 1
                self.totalLabel4.alpha = 1
                self.personLabel4.alpha = 1
                self.totalLabel5.alpha = 1
                self.personLabel5.alpha = 1
                
               // self.billField.center.y = 85
                self.totalLabe.center.y = 415
                self.personLabel1.center.y = 415
                self.totalLabel2.center.y = 515
                self.personLabel2.center.y = 515
                self.totalLabel3.center.y = 615
                self.personLabel3.center.y = 615
                self.totalLabel4.center.y = 715
                self.personLabel4.center.y = 715
                self.totalLabel5.center.y = 815
                self.personLabel5.center.y = 815

            })
        }
        
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
        let total5 = (bill + tip) / 5
        
    
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabe.text = String(format: "$%.2f", total)
        totalLabel2.text = String(format: "$%.2f", total2)
        totalLabel3.text = String(format: "$%.2f", total3)
        totalLabel4.text = String(format: "$%.2f", total4)
        totalLabel5.text = String(format: "$%.2f", total5)
    }
    
    
    func darkMode() {
        
        
    }
    
    
    

}

