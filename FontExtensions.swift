//
//  FontExtensions.swift
//  Abhay Shankar
//
//  Created by Abhay Shankar on 19/07/18.
//  Copyright © 2018 Abhay Shankar. All rights reserved.
//

import Foundation
import UIKit

enum AvenirNextFont : String{
    case Regular
    case Medium
    case Light
    case Bold
}

extension UIFont{
    /// Initialise UIFont with the predefined Avenir Fonts
    ///
    /// - Parameters:
    ///   - fontType: *AvenirNextFont* types
    /**
     
     *AvenirNextFont* types
        * Regular
        * Medium
        * Light
        * Bold
     */
    ///   - size: Float value of Font size
    convenience init?(fontType:AvenirNextFont, with size:CGFloat) {
        var fontName : String = ""
        switch fontType {
        case .Light:
            fontName = "Avenir-Light"
        case .Medium:
            fontName =  "AvenirNext-Medium"
        case .Regular:
            fontName =  "AvenirNext-Regular"
        case .Bold:
            fontName =  "AvenirNext-Bold"
        }
        
        self.init(name: fontName, size: size)
    }
   
}
