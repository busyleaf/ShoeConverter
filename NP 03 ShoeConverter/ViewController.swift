//
//  ViewController.swift
//  NP 03 ShoeConverter
//
//  Created by Robert Snipes on 4/4/15.
//  Copyright (c) 2015 Busyleaf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensShoeSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        mensShoeSizeLabel.hidden = false
        
        let conversionConstant = 30
        
        mensShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Size"
        
        mensShoeSizeTextField.resignFirstResponder()
    }

    @IBAction func wConvertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        womensShoeSizeLabel.hidden = false
        
        let conversionConstant = 30.5
        
        womensShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Size"
        
        womensShoeSizeTextField.resignFirstResponder()
    }
    
    
    //adding a comment here

}

