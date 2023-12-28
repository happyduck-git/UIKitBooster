//
//  File.swift
//  
//
//  Created by HappyDuck on 12/28/23.
//

import UIKit

extension UIView {
    public func addSubviews(_ views: UIView...) {
        views.forEach {
            addSubview($0)
        }
    }
}

extension UIView {
    public func setGradientBorder(
        colors: [UIColor],
        startPoint: CGPoint,
        endPoint: CGPoint,
        borderWidth: CGFloat
    ) {
        let gradient = UIImage.gradientImage(bounds: self.bounds,
                                             colors: colors,
                                             startPoint: startPoint,
                                             endPoint: endPoint)
        let graidentColor = UIColor(patternImage: gradient)
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = graidentColor.cgColor
    }
}

extension UIView {
    public func circleView() {
        if self.frame.width.isEqual(to: self.frame.height) {
            self.layer.cornerRadius = self.frame.width / 2
        }
    }
}
