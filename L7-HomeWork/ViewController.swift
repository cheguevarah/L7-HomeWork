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
    
   
    
//    Задание c лекции:
//
//    1. Добавить в storyboard на ViewController два элемента UITextField и UIButton
//
//    2. По нажатию на кнопку:
//
//    - Вывести содержимое UITextField в консоль
//
//    - Привести содержимое UITextField к типу Int
//
//    - Добавить к написанному числу в UITextField 5
//
//    - Записать результат в глобальную переменную
//
//    - Добавить UILabel и выводить результат в него
//
//    - Сохранять результат в UserDefults
//
//    - Отображать сохранённый результат в UILabel при запуске приложения
//
//    - Добавить UITextView для извлечения второго элемента суммы (вместо 5)
//
//    - Задать размер текста в UITextView в зависимости от числа суммы написаного в UILabel
//
//    - Сохранять историю в UserDefaults
//
//    - Отображать историю в UITextView при старте приложения
//

    
    
    
    



    }
    



