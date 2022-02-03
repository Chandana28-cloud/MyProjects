//
//  ViewController.swift
//  EmailProject
//
//  Created by Ravipati Lakshmi Sai Chandana on 31/01/22.
//

import UIKit

class EmailViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var PasswordField: UITextField!
    
    @IBOutlet weak var EmailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        EmailField.delegate = self
        PasswordField.delegate = self
    }


    @IBAction func signInPressed(_ sender: Any) {
        
        EmailField.endEditing(true)
        PasswordField.endEditing(true)
        
        if textFieldShouldEndEditing(EmailField) && textFieldShouldEndEditing(PasswordField)
        {
            self.performSegue(withIdentifier: "ToResult", sender: self)
        }
        
        print("Email adress is \(EmailField.text!)")
        print("Password is \(PasswordField.text!)")
        print("Email login sucess")
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textFieldShouldEndEditing(EmailField) && textFieldShouldEndEditing(PasswordField) {
        EmailField.endEditing(true)
        PasswordField.endEditing(true)
        print("Email adress is \(EmailField.text!)")
        print("Password is \(PasswordField.text!)")
        }
        
        print("Email login sucess")
        return true
    }
    
    /* func textFieldDidEndEditing(_ textField: UITextField) {
        
        textField.text = ""
    } */
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        if textField.text != ""
        {
            return true
        }
        else
        {
            textField.placeholder = "\(textField.text!) must not be empty"
            return false
        }
    }
    
}
