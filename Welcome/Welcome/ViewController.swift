//
//  ViewController.swift
//  Welcome
//
//  Created by Kashif Ur Rehman on 2/20/15.
//  Copyright (c) 2015 Asad & Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!

    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendEmailButton(sender: UIButton) {
        sender.backgroundColor = UIColor.redColor()
        messageLabel.text = enterMessageTextField.text
        messageLabel.hidden = false;
        messageLabel.textColor = UIColor.purpleColor()
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.magentaColor()
        nameLabel.hidden = false
        //enterNameTextField.state = UIControlState.Normal
    }

}

