//
//  ImageViewExtensions.swift
//  Framework
//
//  Created by Mohit Choudhary on 28/06/18.
//  Copyright © 2018 Particle41. All rights reserved.
//

import UIKit

extension UIImageView{
    func roundedCorner()->Void{
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.frame.size.width/2
    }
}
