//
//  ViewController.swift
//  Postcard
//
//  Created by Seshagiri Vakkalanka on 11/5/14.
//  Copyright (c) 2014 Giri Vakkalanka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    //@IBOutlet is for the compiler to let it know we're referencing a storyboard item
    //weak is talking about the type of pointer: weak
    //var means variable
    //explanation point is for "optional"...
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
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
        
        //IBAction instead of IBOutlet b.c there is an action that takes place
        //parameter is a passed in UIButton.(Button passes itself into the function in case you want to change the nature of the button once its pressed)
        //everything in here runs when you press the button
        //adding a comment here to test commits
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()//makes the keyboard go away
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal) //Buttons have the concept of "State" or control state. UIControlState.Normal is default. You can also do selected or pressed
    }
}

