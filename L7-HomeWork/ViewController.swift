//
//  ViewController.swift
//  L7-HomeWork
//
//  Created by Sasha on 2/13/19.
//  Copyright © 2019 Sasha. All rights reserved.
//

import UIKit

var globalResult: Int = 0

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = UserDefaults.standard.string(forKey: "result")
        
        
    }
    
    
   
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var topField: UITextField!
    
    @IBOutlet weak var bottomField: UITextView!
    
    
    
    
    @IBAction func addNumButton() {
        let firstLabel = topField.text
        let intFirstLabel = Int(firstLabel ?? "0")
        let secondLabel = bottomField.text
        let intSecondLabel = Int(secondLabel ?? "0")
        let result = (intFirstLabel ?? 0) + (intSecondLabel ?? 0)
        globalResult = result
        let stringGlobalRes = String(globalResult)
        resultLabel.text = stringGlobalRes
        UserDefaults.standard.set(stringGlobalRes, forKey: "result")
        bottomField.font = bottomField.font?.withSize(CGFloat(globalResult))
        
    }
    
    
    
    
    
    



    }
    



