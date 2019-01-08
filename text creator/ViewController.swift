//
//  ViewController.swift
//  text creator
//
//  Created by Ievgeniia Pavliuchyk on 08/01/2019.
//  Copyright © 2019 Ievgeniia Pavliuchyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var shadow: UIButton!
    
    
    var FontSize : CGFloat = 40
    var state = false
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func enterText(_ sender: Any) {
        
        label.text = textField.text
        self.resignFirstResponder()
    }
    
    
    @IBAction func red(_ sender: Any) {
        
        label.textColor = UIColor.red
    }
    
    @IBAction func blue(_ sender: Any) {
        
        label.textColor = UIColor.blue
    }
    
    @IBAction func green(_ sender: Any) {
        
        label.textColor = UIColor(red: 51.0/255.0, green: 255.0/255.0, blue: 88.0/255.0, alpha: 1.0 )
    }
    
    
    
    
    @IBAction func font1(_ sender: Any) {
        
        label.font = UIFont(name: "Blacksword", size: FontSize)
    }
    
    @IBAction func font2(_ sender: Any) {
        
        label.font = UIFont(name: "LemonMilk", size: FontSize)
    }
    
    @IBAction func font3(_ sender: Any) {
        
        label.font = UIFont(name: "Moon Flower", size: FontSize)
    }
    
    @IBAction func font4(_ sender: Any) {
        
        label.font = UIFont(name: "SugarstyleMillenial-Regular", size: FontSize)
    }
    
    
    @IBAction func shadow(_ sender: Any) {
        
        if state == false {
            
            state = true
            
            label.layer.shadowColor = UIColor.black.cgColor
            label.layer.shadowOffset = CGSize(width: 2, height: 2)
            label.layer.shadowRadius = 2
            label.layer.shadowOpacity = 0.25
            
            shadow.setTitle("Remove Shadow", for: UIControl.State.normal)
            
            
            
        }else {
            
            state = false
            label.layer.shadowOpacity = 0.0
            
            shadow.setTitle("Add Shadow", for: UIControl.State.normal)
            
        }
    }
    
    
    
    @IBAction func small(_ sender: Any) {
        
        FontSize = 40
        label.font = label.font.withSize(FontSize)
    }
    
    @IBAction func medium(_ sender: Any) {
        
        FontSize = 60
        label.font = label.font.withSize(FontSize)
    }
    
    @IBAction func large(_ sender: Any) {
        
        FontSize = 80
        label.font = label.font.withSize(FontSize)
    }
    
}

