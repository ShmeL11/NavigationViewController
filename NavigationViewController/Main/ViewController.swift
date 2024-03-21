//
//  ViewController.swift
//  NavigationViewController
//
//  Created by Mac on 21.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
// MARK: - Private
    private let router: MainRouter = Router.shared
    
// MARK: - Actions
    @IBAction func didTapDemoButton() {
        router.showDemo(from: self, shouldDismissAnimated: true)
    }

    @IBAction func didTapLoginButton() {
        let authData = AuthData(login: "huynya munya", password: "adwdbcy")
        router.showLogin(from: self, authData: authData)
    }
    
    @IBAction func didTapTermsButton() {
        router.showTerms(from: self, langCode: "EN")
       
    }
}

