//
//  LogInViewController.swift
//  TBT
//
//  Created by Dawid on 25/09/15.
//  Copyright © 2015 Dawid. All rights reserved.
//

import UIKit
import Parse

class LogInViewController: UIViewController {
    
    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var emailTxtField: UITextField!
    
    @IBAction func loginBtn(sender: AnyObject) {
    }
    
    @IBAction func signUpBtn(sender: AnyObject) {
        
        signUp()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func signUp() {
        
        let user = PFUser()
        user.username = usernameTxtField.text
        user.password = passwordTxtField.text
        user.email = emailTxtField.text
        
        user.signUpInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            if error == nil {
                // Hooray! Let them use the app now.
            } else {
                // Examine the error object and inform the user.
            }
        }
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
