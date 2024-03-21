//
//  LoginViewController.swift
//  NavigationViewController
//
//  Created by Mac on 21.08.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    
    // MARK: - IBOutlets
    @IBOutlet private var loginField: UITextField!
    @IBOutlet private var passwordField: UITextField!
    
    // MARK: - Public
    func configure(authData: AuthData) {
        defaultLogin = authData.login
        defaultPassword = authData.password
    }
    
    // MARK: - View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        loginField.text = defaultLogin
        passwordField.text = defaultPassword
    }
    
    // MARK: - Private
    private var defaultLogin: String = ""
    private var defaultPassword: String = ""
    
}

