//
//  RefreshControlExtension.swift
//  Abhay Shankar
//
//  Created by Abhay Shankar on 19/07/18.
//  Copyright © 2018 Abhay Shankar. All rights reserved.
//

import Foundation
import UIKit

extension UIRefreshControl {
    /// Animate UIRefreshControl to spin manually, when API called
    func beginRefreshingManually() {
        if let scrollView = superview as? UIScrollView {
            scrollView.setContentOffset(CGPoint(x: 0, y: scrollView.contentOffset.y - frame.height), animated: true)
        }
        beginRefreshing()
    }
}

