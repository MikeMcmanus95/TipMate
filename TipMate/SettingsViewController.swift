//
//  SettingsViewController.swift
//  TipMate
//
//  Created by Michael Mcmanus on 12/14/18.
//  Copyright © 2018 Michael Mcmanus. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tipDefault: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
 /* @IBAction func setDefault(_ sender: Any) {
    
    let tipPercentages = [0.18, 0.20, 0.25]
    let defaults = UserDefaults.standard
    let finalDef = tipPercentages[tipDefault.selectedSegmentIndex]
    
    defaults.set(finalDef, forKey: "SavedArray")
    let savedArray = defaults.double(forKey: "SavedArray")
    
    defaults.synchronize() */

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        tipDefault.selectedSegmentIndex = defaults.integer(forKey: "selectedIndex")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let selectedIndex = tipDefault.selectedSegmentIndex
        
        defaults.set(selectedIndex, forKey: "selectedIndex")
        defaults.synchronize()
    }
    

    

    
    
    
    
    
    
    
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


