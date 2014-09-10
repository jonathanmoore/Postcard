//
//  ViewController.swift
//  Postcard
//
//  Created by Jonathan Moore on 9/10/14.
//  Copyright (c) 2014 Jonathan Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        
        // Show and set message label
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.text = ""
        
        // Show and set name label
        nameLabel.hidden = false
        nameLabel.text = "From, " + enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        
        // Hide keyboard
        enterMessageTextField.resignFirstResponder()
        
        // Set message
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

