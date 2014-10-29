//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Hongsun Yoon, M.D. on 10/29/14.
//  Copyright (c) 2014 Hongsun Yoon, M.D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
//        let sizeFromTextField = mensShoeSizeTextField.text
//        let numberFromTextField = sizeFromTextField.toInt()
//        var integerFromTextField = numberFromTextField!
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
//        integerFromTextField += conversionConstant
//        mensConvertedShoeSizeLabel.hidden = false
//        let stringWithUpdatedShoeSize = "\(integerFromTextField)"
//        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
    
    }
    @IBAction func convertShoeSizeButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
    }

}

