//
//  ButtonExtensions.swift
//  Framework
//
//  Created by Mohit Choudhary on 28/06/18.
//  Copyright © 2018 Particle41. All rights reserved.

import UIKit
//@IBDesignable
class ButtonExtensions: UIButton {
    var data:AnyObject?
    
  /*  @IBInspectable var borderColor: UIColor = UIColor.white {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat  = 1.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat  = 1.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            clipsToBounds = true
        }
    }*/
    
    func setData(data:AnyObject) {
        self.data = data
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 5.0;
        self.layer.masksToBounds = true
        self.setBackgroundImage(UIImage.navigationBarImage(), for: .highlighted)
        self.tintColor = UIColor.white
        
    }
    
}
