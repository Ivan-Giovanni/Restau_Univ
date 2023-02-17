//
//  LogInViewController.swift
//  Restau_Univ
//
//  Created by Giovanni Zangue on 16/02/2023.
//

import UIKit
import Firebase
import SVProgressHUD

class LogInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func logInButtonPressed(_ sender: UIButton) {
        
//        SVProgressHUD.show()
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) {
            (user, error) in
            
            if error != nil {
                
                let alert = UIAlertController(title: "Erreur!", message: "Email ou Mot de Passe Invalide! Vérifier à Nouveau.", preferredStyle: .alert)
                let action = UIAlertAction(title: "Réessayez", style: .default) {
                    (action) in
                }
                
                alert.addAction(action)
                
                self.present(alert, animated: true, completion: nil)
                
                print("Error log in user")
            }
            else {
//                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToHomePage", sender: self)
                print("Log in successfully")
            }
        }
        
    }
    
    
}
