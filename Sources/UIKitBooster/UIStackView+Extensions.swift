//
//  UIStackView+Extensions.swift
//  MyNFTTracker
//
//  Created by HappyDuck on 11/15/23.
//

import UIKit.UIStackView

extension UIStackView {
    public func addArrangedSubviews(_ views: UIView...) {
        views.forEach {
            addArrangedSubview($0)
        }
    }
}

