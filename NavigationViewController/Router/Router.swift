//
//  Router.swift
//  NavigationViewController
//
//  Created by Mac on 21.08.2023.
//

import UIKit

class Router {
    static let shared = Router()
    
    private init() {}
}






























//protocol RouterProtocol {
//    func presentDemo(_ animated: Bool)
//    func pushLogin()
//    func pushTerms()
//}
//
//enum Controller {
//    case demo(animated: Bool)
//    case login
//    case terms
//
//    var vc: UIViewController {
//        let storyboard = UIStoryboard(name: identifier, bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: identifier)
//
//        switch self {
//        case .demo(let animated):
//            (vc as? DemoViewController)?.configure(with: animated)
//            return vc
//        case .login:
//            return vc
//        case .terms:
//            return vc
//        }
//    }
//
//    private var identifier: String {
//        switch self {
//        case .demo: return "DemoViewController"
//        case .login: return "LoginViewController"
//        case .terms: return "TermsViewController"
//        }
//    }
//
//}
//
//final class Router: RouterProtocol {
//
//    let navigationController: UINavigationController?
//
//    init(navigationController: UINavigationController?) {
//        self.navigationController = navigationController
//    }
//
//    func presentDemo(_ animated: Bool) {
//        let vc = Controller.demo(animated: animated).vc
//        navigationController?.present(vc, animated: true)
//    }
//
//    func pushLogin() {
//        let vc = Controller.login.vc
//        navigationController?.pushViewController(vc, animated: true)
//    }
//
//    func pushTerms() {
//        let vc = Controller.terms.vc
//        navigationController?.pushViewController(vc, animated: true)
//    }
//}
