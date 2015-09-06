//
//  ViewController.swift
//  LeetCode
//
//  Created by 遂 李 on 6/30/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var switchButton: UISegmentedControl!
   
    @IBOutlet weak var testInput: UITextField!
    
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testInput.text = "看看能不能修改"
        
        testInput.delegate = self

        testInput.enabled = false
        
        switchButton.enabled = false
        
        valueLabel.enabled = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
//        
//        return false
//        
//    }
    


}

