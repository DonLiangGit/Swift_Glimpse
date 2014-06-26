//
//  SecondViewController.swift
//  TodoList
//
//  Created by DonLeung on 6/26/14.
//  Copyright (c) 2014 DonLeung. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
  
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Events
    @IBAction func btnAddTask_Click(sender: UIButton) {
        println("Button was clicked.")
        taskMgr.addTask(txtTask.text, desc: txtDesc.text)
        self.view.endEditing(true)
        // Clear textbox
        txtTask.text = ""
        txtDesc.text = ""
        self.tabBarController.selectedIndex = 0 // tab index.
    }

    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder();
        return true
    }

}

