//
//  UIButton+Extensions.swift
//  MyNFTTracker
//
//  Created by HappyDuck on 11/7/23.
//

import UIKit.UIButton
import Combine

// MARK: - Combine Publisher
extension UIButton {
    var tapPublisher: AnyPublisher<Void, Never> {
        controlPublisher(for: .touchUpInside)
            .map { _ in }
            .eraseToAnyPublisher()
    }
}
