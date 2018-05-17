//
//  UIView+Extensions.swift
//  UIKitHelp
//
//  Created by Alexander Bollbach on 5/16/18.
//  Copyright © 2018 Alexander Bollbach. All rights reserved.
//

import UIKit

extension UIView {
    
    public func pinTo(superView: UIView, insetBy insets: CGFloat = 0) {
        
        superView.addSubview(self)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.leftAnchor.constraint(equalTo: superView.leftAnchor, constant: insets).isActive = true
        self.rightAnchor.constraint(equalTo: superView.rightAnchor, constant: -insets).isActive = true
        self.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -insets).isActive = true
        self.topAnchor.constraint(equalTo: superView.topAnchor, constant: insets).isActive = true
    }
}
