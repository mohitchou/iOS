//
//  StringExtensions.swift
//  Framework
//
//  Created by Mohit Choudhary on 28/06/18.
//  Copyright © 2018 Particle41. All rights reserved.
//

import UIKit

extension String {
    
    func url() -> NSURL {
        
            let url:NSURL = NSURL(string:self)!
            return url
       
    }
    
    func getBlankUrl() -> NSURL {
        
        let url:NSURL = NSURL(string:self)!
        return url
        
    }
    
    func isEmailValid() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,30}"
        let email  = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return email.evaluate(with: self)
    }
    
    func isPasswordValid() -> Bool {
        let passwordRegEx = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z!@#$%^&*?<>{}()~_\\d]{8,}$"
        let password  = NSPredicate(format:"SELF MATCHES %@", passwordRegEx)
        return password.evaluate(with: self)
    }
    
    


}

extension UIView {
    
    /**
     Rotate a view by specified degrees
     
     - parameter angle: angle in degrees
     */
    func rotate(angle: CGFloat) {
        let radians = angle / 180.0 * CGFloat(M_PI)
        let rotation = self.transform.rotated(by: radians);
        self.transform = rotation
    }
    
}
