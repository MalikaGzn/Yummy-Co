//
//  UiView+Extension.swift
//  Yummy Co
//
//  Created by Malika 💕 on 12/11/23.
//


import UIKit

extension UIView {
     @IBInspectable var cornerRadius: CGFloat{
        get {return cornerRadius}
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
