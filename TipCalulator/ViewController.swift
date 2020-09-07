//
//  ViewController.swift
//  TipCalulator
//
//  Created by Yuru Zhou on 9/7/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    

    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0
        //Calculate the tip and total
        let tipPercentage = [0.15,0.18,0.20]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

