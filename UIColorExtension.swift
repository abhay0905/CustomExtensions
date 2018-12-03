//
//  UIColorExtension.swift
//  Abhay Shankar
//
//  Created by Abhay Shankar on 19/07/18.
//  Copyright © 2018 Abhay Shankar. All rights reserved.
//

import Foundation
import UIKit

extension UIColor{
    /// Custom blue color used as theme
    class var themeColor:UIColor {
        return UIColor.init(red: 15.0/255.0, green: 117.0/255.0, blue: 189.0/255.0, alpha: 1.0)
    }
    
    /// Custom UIcolor initialiser with Int values
    ///
    /// - Parameters:
    ///   - red: Int value of Red Componant
    ///   - green: Int value of Green Componant
    ///   - blue: Int value of Blue Componant
    ///   - alpha: Float value of alpha
    convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat) {
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
    }
    
    /// Custom UIcolor initialiser with Hex values
    /// ````
    ///An example
    /// init(rgbHex:0xffffff,alpha:1.0)
    /// ````
    /// - Parameters:
    ///   - rgbHex: Hex value of Color
    ///   - alpha: Float value of alpha
    convenience init(rgbHex: Int, alpha: CGFloat = 1.0) {
        self.init(
            red: (rgbHex >> 16) & 0xFF,
            green: (rgbHex >> 8) & 0xFF,
            blue: rgbHex & 0xFF,
            alpha: alpha
        )
    }
}
