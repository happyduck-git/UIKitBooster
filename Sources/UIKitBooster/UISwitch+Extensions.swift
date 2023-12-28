//
//  UISwitch+Extensions.swift
//  MyNFTTracker
//
//  Created by HappyDuck on 11/16/23.
//

import UIKit.UISwitch
import Combine

extension UISwitch {
    public var statePublisher: AnyPublisher<Bool, Never> {
        controlPublisher(for: .valueChanged)
            .map { $0 as! UISwitch }
            .map { $0.isOn }
            .eraseToAnyPublisher()
    }
}
