//
//  DateExtension.swift
//  Framework
//
//  Created by Mohit Choudhary on 28/06/18.
//  Copyright © 2018 Particle41. All rights reserved.

import UIKit


extension Date {
    func toString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM dd yyyy"
        return dateFormatter.string(from: self)
    }
}
