//
//  UITextField+Extensions.swift
//  MyNFTTracker
//
//  Created by HappyDuck on 12/1/23.
//

import UIKit.UITextField
import Combine

extension UITextField {

    public var textPublisher: AnyPublisher<String, Never> {
        NotificationCenter.default.publisher(
            for: UITextField.textDidChangeNotification,
            object: self
        )
        .compactMap { ($0.object as? UITextField)?.text }
        .eraseToAnyPublisher()
    }

}
