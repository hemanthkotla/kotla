//
//  ViewController.swift
//  Calculator
//
//  Created by Student on 2019-10-02.
//  Copyright © 2019 matrians. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var result: UILabel!
    
    var numbervisible : Double = 0
    var lastnumber : Double = 0
    var operation = 0
    var operationperform = false
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func operate(_ sender: UIButton) {
        
        let tag = (sender as! UIButton).tag+1
        
        if tag == 12
        {
            result.text = ""
            lastnumber = 0
            numbervisible = 0
            operation = 0
            return
        }
        else if tag == 16
        {
           operationperform = true
            lastnumber = Double(result.text!)!
            result.text = "+"
            operation = tag
        }
        else if tag == 17
        {
            operationperform = true
            lastnumber = Double(result.text!)!
            result.text = "_"
            operation = tag
        }
        else if tag == 18
        {
            operationperform = true
            lastnumber = Double(result.text!)!
            result.text = "x"
            operation = tag
        }
        else if tag == 19
        {
            operationperform = true
            lastnumber = Double(result.text!)!
            result.text = "÷"
            operation = tag
        }
        
        else if tag == 20
        {
            operationperform = true
            lastnumber = Double(result.text!)!
            result.text = "%"
            operation = tag
        }
            
      
            
        else if tag == 21
        {
            if operation == 16
            {
                result.text = String(lastnumber + numbervisible)
            }
            else if operation == 17
            {
                result.text = String(lastnumber - numbervisible)
            }
            else if operation == 18
            {
                 result.text = String(lastnumber * numbervisible)
            }
            else if operation == 19
            {
                 result.text = String(lastnumber / numbervisible)
            }
            else if operation == 20
            {
                 result.text = String(lastnumber * numbervisible/100)
            }
        }
        
        
    }
    
    @IBAction func number(_ sender: UIButton) {
        let  tag = ( sender as! UIButton).tag+1
        if operationperform == true {
            operationperform = false
            result.text = String(tag)
            numbervisible = Double(result.text!)!
        }
        else
        {
            result.text = result.text! + String(tag)
            numbervisible = Double(result.text!)!
        }
        
    }
    
    }


