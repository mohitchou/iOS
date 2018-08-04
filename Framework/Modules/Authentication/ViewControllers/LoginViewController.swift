//
//  LoginViewController.swift
//  Framework
//
//  Created by Mohit Choudhary on 02/07/18.
//  Copyright © 2018 Particle41. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class LoginViewController: BaseClassViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    var loginViewModel = LoginViewModel()
    var disposeBag  = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        _ = emailTextField.rx.text.map{$0 ?? ""}.bind(to: loginViewModel.emailText)
        _ = passwordTextField.rx.text.map{$0 ?? ""}.bind(to: loginViewModel.passwordText)
        _ = loginViewModel.isValid.bind(to: loginButton.rx.isEnabled)
        
        loginViewModel.isValid.subscribe(onNext: {isValid in
            self.messageLabel.text = isValid ? "Access granted!" : "Access denied!"
            self.messageLabel.textColor = isValid ? UIColor().greenColor : UIColor.redCustomColor()
        }).disposed(by: disposeBag)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onLogin(sender:UIButton){
        AlertViews.showConfirmAndCancleAlertWithCompletion(title: "P41", displayViewController: self, messageText: "Are you sure?", completion: {
            
              let dashboardVC:DashboardViewController = STORYBOARD.DASHBOARD.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
            self.navigationController?.pushViewController(dashboardVC, animated: true)
            
        }) {
            self.emailTextField.text = ""
            self.passwordTextField.text = ""
        }
    }
    


}
