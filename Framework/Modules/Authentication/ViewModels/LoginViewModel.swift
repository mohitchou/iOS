//
//  LoginViewModel.swift
//  Framework
//
//  Created by Mohit Choudhary on 02/07/18.
//  Copyright © 2018 Particle41. All rights reserved.
//

import UIKit
import RxSwift

struct LoginViewModel {

    var emailText = Variable<String>("")
    var passwordText = Variable<String>("")
    var isValid:Observable<Bool>{
        return Observable.combineLatest(emailText.asObservable(),passwordText.asObservable()){(email, password) in
            self.emailText.value.isEmailValid() && self.passwordText.value.isPasswordValid()
            }
        }
}
