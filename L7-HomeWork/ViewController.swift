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
        
        bottomField.text = UserDefaults.standard.string(forKey: "history")
        
        
        
        
    }
    
    
   
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var topField: UITextField!
    
    @IBOutlet weak var bottomField: UITextView!
    
    
    
    
    @IBAction func addNumButton() {
        let firstLabel = Int(topField.text ?? "0")
        let secondLabel = Int(bottomField.text ?? "0")
        globalResult = (firstLabel ?? 0) + (secondLabel ?? 0)
        resultLabel.text = String(globalResult)
        
        var history = ("\(firstLabel ?? 0) + \(secondLabel ?? 0) = \(globalResult)\n")
        var savedHistory = UserDefaults.standard.string(forKey: "history") ?? ""
        savedHistory += history
        UserDefaults.standard.set(savedHistory, forKey: "history")
//        UserDefaults.standard.set(String(globalResult), forKey: "result")
        bottomField.font = bottomField.font?.withSize(CGFloat(globalResult))
        
    }
    
   
    
    
    
    
    
    



    }
    



