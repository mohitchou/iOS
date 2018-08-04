//
//  TextFieldExtensions.swift
//  Framework
//
//  Created by Mohit Choudhary on 28/06/18.
//  Copyright © 2018 Particle41. All rights reserved.
//

import UIKit

extension UITextField {

    class func setPlaceHolderColor(textField:UITextField, placeholderText:String, placeholderColor:UIColor) {
        textField.attributedPlaceholder = NSAttributedString(string:placeholderText,
                                                             attributes:[kCTForegroundColorAttributeName as NSAttributedStringKey:placeholderColor])
    }
    
}
