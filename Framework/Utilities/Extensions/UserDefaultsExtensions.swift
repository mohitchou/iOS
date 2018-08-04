//
//  UserDefaultsExtensions.swift
//  Framework
//
//  Created by Mohit Choudhary on 28/06/18.
//  Copyright © 2018 Particle41. All rights reserved.
//

import UIKit

extension UserDefaults {

    class func setDeviceToken(token:String){

        self.standard.setValue(token, forKey: "DeviceToken")

    }
    
    class func getDeviceToken ()-> String {
        if self.standard.value(forKey: "DeviceToken") != nil {
            if self.standard.value(forKey: "DeviceToken") as! String == ""{
                return "123456789"
            }else{
            return self.standard.value(forKey: "DeviceToken") as! String
            }
        }else{
            return "73facd9e85fed3cba00f568d3d1a74423e63a53ad80d1e9d5a1f1zz123456788"
        }
    }
    
    class func setAPIAccessToken(token:String){
        
        self.standard.setValue(token, forKey: "APIAccessToken")
        
    }
    
    class func getAPIAccessToken()-> String {
        
        if self.standard.value(forKey: "APIAccessToken") as? String != nil {
            return self.standard.value(forKey: "APIAccessToken") as! String
        }else{
            return ""
        }
    }
    
    
    class func setLoginType(type:String){
        
        self.standard.setValue(type, forKey: "LoginType")
        
    }
    class func getLogInType()-> String {
        
        return self.standard.value(forKey: "LoginType") as! String
    }
    class func checkLogin() -> Bool{
        
        if (self.standard.value(forKey: "isLogin") != nil) {
            return self.standard.value(forKey: "isLogin") as! Bool
        }else{
            return false
        }
      
        
    }
    class func setLogin(isLogin:Bool){
        
        self.standard.setValue(isLogin, forKey: "isLogin")
        
    }
    
    class func setLoggedInUserFirstname(firstName:String){
        
        self.standard.setValue(firstName, forKey: "firstName")
    }

    class func getLoggedInUserFirstName()-> String {
        
        if (self.standard.value(forKey: "firstName") != nil) {
            return self.standard.value(forKey: "firstName") as! String
        }else{
            return ""
        }
        
    }
    
    class func setLoggedInUserLastname(lastName:String){
        
        self.standard.setValue(lastName, forKey: "lastName")
    }
    
    class func getLoggedInUserLastName()-> String {
        
        if (self.standard.value(forKey: "lastName") != nil) {
            return self.standard.value(forKey: "lastName") as! String
        }else{
            return ""
        }
        
    }
    
    class func setLoggedInUserProfilePic(path:String){
        
        let picpath:String = API.TARGET_BASE_URL  + path
        self.standard.set(picpath, forKey: "profilePic")
    }
    
    class func getLoggedInUserProfilepic()-> String {
        
        if (self.standard.value(forKey: "profilePic") != nil) {
            return self.standard.value(forKey: "profilePic") as! String
        }else{
            return ""
        }
        
    }
    

    
    class func getLoggedInUserEmail()-> String {
        
        if (self.standard.value(forKey: "email") != nil) {
            return self.standard.value(forKey: "email") as! String
        }else{
            return ""
        }
        
    }
    

    
    
    
    class func setLogout(){
        
        self.standard.setValue(false, forKey: "isLogin")
        self.standard.set("", forKey: "LoggedInUserId")
        self.standard.setValue("", forKey: "APIAccessToken")
        
    }
    
    
    
}
