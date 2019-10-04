//
//  ViewController.swift
//  Calculator
//
//  Created by Student on 2019-10-02.
//  Copyright © 2019 matrians. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Resultlabel: UILabel!
    
    var numbershown: Double = 0
    var lastnumber: Double = 0
    var operation = 0
    var operationgoingon = false

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Resultlabel.text=""
    }


    @IBAction func number(_ sender: Any) {
        
        let tag = (sender as! UIButton).tag

        if operationgoingon == true
        {
            operationgoingon = false
            Resultlabel.text = String(tag - 1)
            numbershown = Double(Resultlabel.text!)!
        }
        else {
            
        
        let tag = (sender as! UIButton).tag
        Resultlabel.text = Resultlabel.text! + String(tag - 1)
            numbershown = Double (Resultlabel.text!)!
        }
    }
    


    @IBAction func operate(_ sender: Any)
        
    {
        
        
        let tag = (sender as! UIButton).tag
        if tag ==   11
        {
            Resultlabel.text = ""
            lastnumber = 0
            numbershown = 0
            operation = 0
            
            return
            
        }
        
        if tag == 15
        {
            operationgoingon = true
            lastnumber = Double (Resultlabel.text!)!
            Resultlabel.text = "+"
            operation = tag
        }
        
        else if tag == 16
        {
            operationgoingon = true
            lastnumber = Double (Resultlabel.text!)!
            Resultlabel.text = "_"
            operation = tag

        }
        else if tag == 17
        {
           operationgoingon = true
            lastnumber = Double (Resultlabel.text!)!
            Resultlabel.text = "*"
            operation = tag

        }
        else if tag == 14
        {
            operationgoingon = true
            lastnumber = Double (Resultlabel.text!)!
            Resultlabel.text = "/"
            operation = tag

        }
        else if tag == 13
        
        {
        operationgoingon = true
            lastnumber = Double (Resultlabel.text!)!
            Resultlabel.text = "%"
            operation = tag

        }
            else if tag == 12
        {
            operationgoingon = true
            lastnumber = Double (Resultlabel.text!)!
            Resultlabel.text = "±"
            operation = tag
        }
            else if tag == 19
        {
            operationgoingon = true
            operation = tag
        }
        else if tag == 18
        {
          if operation == 15
          {
            Resultlabel.text = String( lastnumber + numbershown )
            }
            else if operation == 16
          {
              Resultlabel.text = String( lastnumber - numbershown )
            
            }
            else if operation == 17
          {
              Resultlabel.text = String( lastnumber * numbershown )
            }
            else if operation == 14
          {
              Resultlabel.text = String( lastnumber / numbershown )
          }
            else if operation == 13
            {
                Resultlabel.text = String (lastnumber * numbershown/100)
            }
            else if operation == 12
          {
            Resultlabel.text = String ( lastnumber * -1)
            }
            

          
            
            }
            
        }
        
    }
    



