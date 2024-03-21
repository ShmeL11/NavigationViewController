//
//  TermsViewController.swift
//  NavigationViewController
//
//  Created by Mac on 21.08.2023.
//

import UIKit

class TermsViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet private var agreementTitleLabel: UILabel!
    
    // MARK: - Public
    func configure(with langCode: String) {
        self.langCode = langCode
    }
    
    // MARK: - View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        if let defaultTitle = agreementTitleLabel.text {
            let newTitle = defaultTitle + " - " + langCode
            agreementTitleLabel.text = newTitle
        }
    }
    
    // MARK: - Private
    private var langCode: String = ""
}
