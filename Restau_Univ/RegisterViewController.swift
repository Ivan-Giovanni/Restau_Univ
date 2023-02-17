//
//  RegisterViewController.swift
//  Restau_Univ
//
//  Created by Giovanni Zangue on 16/02/2023.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
//        SVProgressHUD.show()
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) {
            (user, error) in
            
            if error != nil {
                print("Error registering user \(error!)")
            }
            else {
//                SVProgressHUD.dismiss()
                print("User registered with success")
                self.performSegue(withIdentifier: "goToHomePage", sender: self)
            }
        }
        
    }
    
    
}
