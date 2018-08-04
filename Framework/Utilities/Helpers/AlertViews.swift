//
//  AlertViews.swift
//
//  Created by SDN MacMini 17 on 02/02/17.
//  Copyright © 2017 Mohit Choudhary. All rights reserved.
//

import UIKit

class AlertViews: NSObject {
    
    
    // Function to show an alert view with params
    class func showAlert(title:String, message:String,displayViewController viewController:UIViewController) {
        let alertController = UIAlertController(title: title, message:
            message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default,handler: nil))
        
        DispatchQueue.main.async(execute: { () -> Void in
            viewController.present(alertController, animated: true, completion: nil)
        })
        
        
    }
    
    // Function to show an alert view with params
    class func showAlertWithCompletion(title:String, message:String,displayViewController viewController:UIViewController, completion:(() -> Void)?) {
        let alertController = UIAlertController(title: title, message:
            message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: {
            (action : UIAlertAction!) -> Void in
            completion!()
        })
        
        
        alertController.addAction(okAction)
        
        viewController.present(alertController, animated: true, completion: nil)
    }
    
    class func showUnderDevlopmentAlert(viewController:UIViewController) {
        let alertController = UIAlertController(title: STRINGVALUES.APPLICATION_NAME, message:
            "Under Development", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default,handler: nil))
        
        DispatchQueue.main.async(execute: { () -> Void in
            viewController.present(alertController, animated: true, completion: nil)
        })
    }
    
    class func showNoInternetAlert(viewController:UIViewController) {
        let alertController = UIAlertController(title: STRINGVALUES.APPLICATION_NAME, message:
            STRINGVALUES.NO_INTERNET_MESSAGE, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default,handler: nil))
        
        DispatchQueue.main.async(execute: { () -> Void in
            viewController.present(alertController, animated: true, completion: nil)
        })
    }
    
    // Function to show an alert view with params
    class func showLogoutAlertWithCompletion(displayViewController viewController:UIViewController, completion:(() -> Void)?) {
        let alertController = UIAlertController(title: STRINGVALUES.APPLICATION_NAME, message:
            "Are you sure you want to logout?", preferredStyle: .alert)
        
        let yesAction = UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: {
            (action : UIAlertAction!) -> Void in
            completion!()
            UserDefaults.setLogout()
           
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: {
            (action : UIAlertAction!) -> Void in
            completion!()
        })
        
        
        alertController.addAction(yesAction)
        alertController.addAction(cancelAction)
        
        viewController.present(alertController, animated: true, completion: nil)
    }
    
    // Function to show an alert view with params
    class func showConfirmAlertWithCompletion(displayViewController viewController:UIViewController,messageText:String, completion:(() -> Void)?) {
        let alertController = UIAlertController(title: STRINGVALUES.APPLICATION_NAME, message:
            messageText, preferredStyle: .alert)
        
        let yesAction = UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: {
            (action : UIAlertAction!) -> Void in
            completion!()
           
        })
        
        let cancelAction = UIAlertAction(title: "No", style: UIAlertActionStyle.cancel, handler: {
            (action : UIAlertAction!) -> Void in
                   })
        
        
        alertController.addAction(yesAction)
        alertController.addAction(cancelAction)
        
        viewController.present(alertController, animated: true, completion: nil)
    }
    
    
    // Function to show an alert view with params
    class func showConfirmAndCancleAlertWithCompletion(title:String, displayViewController viewController:UIViewController,messageText:String, completion:(() -> Void)? ,cancelCompletionompletion:(() -> Void)?){
        let alertController = UIAlertController(title: title, message:
            messageText, preferredStyle: .alert)
        
        let yesAction = UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: {
            (action : UIAlertAction!) -> Void in
            completion!()
            
        })
        
        let cancelAction = UIAlertAction(title: "No", style: UIAlertActionStyle.cancel, handler: {
            (action : UIAlertAction!) -> Void in
        cancelCompletionompletion!()
        })
        
        
        alertController.addAction(yesAction)
        alertController.addAction(cancelAction)
        
        viewController.present(alertController, animated: true, completion: nil)
    }
    
    
}
