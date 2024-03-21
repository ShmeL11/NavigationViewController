//
//  MainRouter.swift
//  NavigationViewController
//
//  Created by Mac on 21.08.2023.
//

import UIKit

protocol MainRouter {
    func showDemo(from viewController: UIViewController, shouldDismissAnimated: Bool)
    func showLogin(from viewController: UIViewController, authData: AuthData)
    func showTerms(from viewController: UIViewController, langCode: String)
}

// MARK: - MainRouter
extension Router: MainRouter {
    func showDemo(from viewController: UIViewController, shouldDismissAnimated: Bool) {
        let storyboard = UIStoryboard(name: "DemoViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DemoViewController") as! DemoViewController
        vc.configure(with: true)
        viewController.present(vc, animated: true)
    }
    
    func showLogin(from viewController: UIViewController, authData: AuthData) {
        let storyboard = UIStoryboard(name: "LoginViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        let authData = AuthData(login: "huynya munya", password: "adwdbcy")
        vc.configure(authData: authData)
        viewController.navigationController?.pushViewController(vc, animated: true)
    }
    
    func showTerms(from viewController: UIViewController, langCode: String) {
        let storyboard = UIStoryboard(name: "TermsViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TermsViewController") as! TermsViewController
        vc.configure(with: "EN")
        viewController.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
