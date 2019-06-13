//
//  ViewController.swift
//  PasswordToggle
//
//  Created by Matteo Corradin on 13/06/2019.
//  Copyright © 2019 Matteo Corradin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    @IBAction func clicked(_ sender: Any) {
        textfield.togglePasswordVisibility()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension UITextField {
    func togglePasswordVisibility() {
        isSecureTextEntry = !isSecureTextEntry
        if let existingText = text, isSecureTextEntry {
            text = nil;
            insertText(existingText)
        }
        if let existingSelectedTextRange = selectedTextRange {
            selectedTextRange = nil
            selectedTextRange = existingSelectedTextRange
        }
    }
}
