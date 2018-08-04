//
//  Constants.swift
//  Framework
//
//  Created by Mohit Choudhary on 28/06/18.
//  Copyright © 2018 Particle41. All rights reserved.//
import UIKit


let mainStoryboard : UIStoryboard = UIStoryboard(name: STORYBOARD.MAIN,bundle: nil)
let tabBarAppStoryboard : UIStoryboard = UIStoryboard(name: "User",bundle: nil)

struct API {
    

    static let BASE_URL_DEV:String="http://127.0.0.:5000/"
    static let BASE_URL_STAGING:String = "http://127.0.0.:5000/"
    static let BASE_URL_LIVE:String = "http://127.0.0.:5000/"
    
    static let LIVE_SERVER_CONNECTED:Bool = false
    static let TARGET_BASE_URL:String = LIVE_SERVER_CONNECTED ? BASE_URL_LIVE :  BASE_URL_STAGING
    static let API_ENDPOINT:String="\(TARGET_BASE_URL)api/"
    
}

struct STRINGVALUES {
    
    static let APPLICATION_NAME = "Classroom Door"
    static let NO_INTERNET_MESSAGE = "No internet Connection"
    
}

struct APPDETAILS {
    static let ITUNES_STORE_URL = ""
}

struct DEVICES {
    enum enDeviceFamily:Int {
        case iPhone4S
        case iPhone5Family
        case iPhone6
        case iPhone6Plus
    }
    static let DEVICE : enDeviceFamily = enDeviceFamily.iPhone6Plus
}

struct CONNECTIONMODE {
    enum enBuildConnection:Int {
        case LIVE
        case Staging
        case Dev
    }
}

struct SHARINGMODE {
    enum enShareUsing:Int {
        case c
        case TWITTER
        case EMAIL
    }
}
struct STORYBOARD {
    static let MAIN = "Main"
    static let DASHBOARD =  UIStoryboard(name: "Dashboard", bundle: nil)
}
struct SCREENS {
   
}

struct SCREEN_IDENTIFIERS {
    static let SIGNUP = "SignUpViewController"
    static let SIGNIN = "SignInViewController"
}

struct TABLE_VIEW_IDENTIFIERS {

}



