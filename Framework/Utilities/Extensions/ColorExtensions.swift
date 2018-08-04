//
//  ColorExtensions.swift
//  Framework
//
//  Created by Mohit Choudhary on 28/06/18.
//  Copyright © 2018 Particle41. All rights reserved.

import UIKit

extension UIColor {
    
    var greenColor:UIColor{
        get{
            return UIColor(red: 0.0/255.0, green: 205.0/255.0, blue: 0.0/255.0, alpha: 0.8)
        }
    }
    
    class func validationErrorColor() -> UIColor {
        let color: UIColor = UIColor(red: 160.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        return color
    }
    
    class func navigationBarColor() -> UIColor {
        let color: UIColor = UIColor(red: 88.0/255.0, green: 177.0/255.0, blue: 69.0/255.0, alpha: 1.0)
        return color
    }
    
    class func introBGColor() -> UIColor {
        let color: UIColor = UIColor(red: 77.0/255.0, green: 176.0/255.0, blue: 69.0/255.0, alpha: 1.0)
        return color
    }
    
    class func lightGreyCustomColor() -> UIColor {
        let color: UIColor = UIColor(red: 251.0/255.0, green: 251.0/255.0, blue: 251.0/255.0, alpha: 0.8)
        return color
    }
    class func screenBGlightGreyCustomColor() -> UIColor {
        let color: UIColor = UIColor(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 0.8)
        return color
    }
    
    class func redCustomColor() -> UIColor {
        let color: UIColor = UIColor(red: 205.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.8)
        return color
    }
    
    class func greenCustomColor() -> UIColor {
        let color: UIColor = UIColor(red: 0.0/255.0, green: 205.0/255.0, blue: 0.0/255.0, alpha: 0.8)
        return color
    }


}
