//
//  UIViewController+Extensions.swift
//  UIKitHelp
//
//  Created by Alexander Bollbach on 6/2/18.
//  Copyright © 2018 Alexander Bollbach. All rights reserved.
//

import UIKit

extension UIViewController {
    public func add(_ child: UIViewController) {
        addChildViewController(child)
        child.view.pinTo(superView: view)
        child.didMove(toParentViewController: self)
    }
    public func remove() {
        guard parent != nil else {
            return
        }
        willMove(toParentViewController: nil)
        removeFromParentViewController()
        view.removeFromSuperview()
    }
}
