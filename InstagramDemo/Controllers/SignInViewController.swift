//
//  SignInViewController.swift
//  InstagramDemo
//
//  Created by Nuriddin Jumaev on 12/2/20.
//  Copyright © 2020 Nuriddin Jumaev. All rights reserved.
//

import UIKit

class SignInViewController: BaseViewController {

    
    //first load func
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //MARK: - Methods
    
    func callSignUp(){
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }

    //MARK: - Actions
    
    @IBAction func signInPressed(_ sender: UIButton) {
        sceneDelegate().callHomeController()
    }
    
    @IBAction func signUpPressed(_ sender: UIButton) {
        callSignUp()
    }
    
}
