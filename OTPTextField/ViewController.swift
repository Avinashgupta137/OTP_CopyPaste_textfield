//
//  ViewController.swift
//  OTPTextField
//
//  Created by IPS-149 on 24/03/23.
//

import UIKit
import AEOTPTextField

class ViewController: UIViewController {

    @IBOutlet weak var otpTextField: AEOTPTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        otpTextField.otpDelegate = self
               otpTextField.otpFontSize = 16
               otpTextField.otpTextColor = .systemRed
               otpTextField.otpCornerRaduis = 5
               otpTextField.otpFilledBorderColor = .blue
               otpTextField.configure(with: 6)
    }


}

extension ViewController: AEOTPTextFieldDelegate {
    func didUserFinishEnter(the code: String) {
        print(code)
    }
}
