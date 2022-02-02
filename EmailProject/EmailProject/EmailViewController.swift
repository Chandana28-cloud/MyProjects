//
//  ViewController.swift
//  EmailProject
//
//  Created by Ravipati Lakshmi Sai Chandana on 31/01/22.
//

import UIKit

class EmailViewController: UIViewController {

    @IBOutlet weak var PasswordField: UITextField!
    
    @IBOutlet weak var EmailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signInPressed(_ sender: Any) {
        print("Email adress is \(EmailField.text!)")
        print("Password is \(PasswordField.text!)")
        print("Email login sucess")
        
        self.performSegue(withIdentifier: "ToResult", sender: self)
        
    }
}
