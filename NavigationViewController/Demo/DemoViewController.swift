//
//  omkmn.swift
//  NavigationViewController
//
//  Created by Mac on 21.08.2023.
//

import UIKit

class DemoViewController: UIViewController {
    
    // MARK: - Public
    func configure(with shouldDismissAnimated: Bool) {
        self.shouldDismissAnimated = shouldDismissAnimated
    }
    
    // MARK: - Actions
    @IBAction func didTapDismissButton() {
        dismiss(animated: shouldDismissAnimated)
    }
    
    // MARK: - Private
    private var shouldDismissAnimated = true
}
