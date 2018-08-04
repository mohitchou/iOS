//
//  ImageExtensions.swift
//  Framework
//
//  Created by Mohit Choudhary on 28/06/18.
//  Copyright © 2018 Particle41. All rights reserved.
//

import UIKit
extension UIImage{
    
    func resizeWithPercentage(percentage: CGFloat) -> UIImage? {
        let imageView = UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: size.width * percentage, height: size.height * percentage)))
        imageView.contentMode = .scaleAspectFit
        imageView.image = self
        UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, false, scale)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        imageView.layer.render(in: context)
        guard let result = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
        UIGraphicsEndImageContext()
        return result
    }
    
    func resizeWithWidth(width: CGFloat) -> UIImage? {
        let imageView = UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: width, height: CGFloat(ceil(width/size.width * size.height)))))
        imageView.contentMode = .scaleAspectFit
        imageView.image = self
        UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, false, scale)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        imageView.layer.render(in: context)
        guard let result = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
        UIGraphicsEndImageContext()
        return result
    }
    
    class func userDefaultImage() -> UIImage {
        return UIImage(named: "defaultProfileImage")!
    }
    
    class func navigationBarImage() -> UIImage {
        return UIImage(named: "sideMenuBG")!
    }
  
    class func backButtonImage() -> UIImage {
        return UIImage(named: "Back")!
    }
    
    class func addImage() -> UIImage {
        return UIImage(named: "addImage")!
    }
    
    class func defaultProductimage() -> UIImage {
        return UIImage(named: "defaultProductImage")!
    }
    
    class func defaultNavigationBGImage() -> UIImage {
        return UIImage(named: "sideMenuBG")!
    }
    
    class func sidemenuNavigationIconImage() -> UIImage {
        return UIImage(named: "icon-menu")!
    }
    class func sidemenuWithNotificationNavigationIconImage() -> UIImage {
        return UIImage(named: "icon-menuSup-Notification")!
    }
    class func introIconImage() -> UIImage {
        return UIImage(named: "presentation")!
    }
    class func savedCardbrandImage(name:String) -> UIImage {
        
        if name == "Visa" {
            return UIImage(named: "pm_visa")!
    
        }else if name == "American Express" {
            return UIImage(named: "pm_american_express")!
        }else if name == "Diners Club" {
            return UIImage(named: "pm_diners_club")!
        }else if name == "Discover" {
            return UIImage(named: "pm_discover")!
        }else if name == "JCB" {
            return UIImage(named: "pm_jcb")!
        }else if name == "Mastercard" {
            return UIImage(named: "pm_master_card")!
        }else{
            return UIImage(named: "pm_other")!
        }
    }


    
    
  /*  func toBase64() -> String{
        let imageData = UIImageJPEGRepresentation(self,0.4)
        return imageData!.base64EncodedStringWithOptions(NSData.Base64EncodingOptions.Encoding64CharacterLineLength)
    }*/

}
