//
//  Float.swift
//  Framework
//
//  Created by Mohit Choudhary on 28/06/18.
//  Copyright © 2018 Particle41. All rights reserved.
//

import UIKit

extension Float {
    var neoBookCurrency:String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        return formatter.string(from: NSNumber(value:self))!
    }
}
