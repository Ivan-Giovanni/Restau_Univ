//
//  ViewController.swift
//  Restau_Univ
//
//  Created by Giovanni Zangue on 16/02/2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToLogIn(_ sender: UIButton) {
        performSegue(withIdentifier: "goToLogIn", sender: self)
    }
    
    @IBAction func goToRegister(_ sender: UIButton) {
        performSegue(withIdentifier: "goToRegister", sender: self)
    }
    
}

