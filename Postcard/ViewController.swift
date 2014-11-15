//
//  ViewController.swift
//  Postcard
//
//  Created by Stephi Goering on 09/11/14.
//  Copyright (c) 2014 Stephi Goering. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMesageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMesageTextField.text
        messageLabel.textColor = UIColor.redColor()
            
        enterMesageTextField.text = ""
        enterMesageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

