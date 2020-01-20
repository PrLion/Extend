//
//  UIView+Border.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import UIKit

public extension UIView {
  func border(color: UIColor, width: CGFloat, corners: UIRectCorner = .allCorners, radius: CGFloat) {
    round(corners: corners, radius: radius)
    layer.borderColor = color.cgColor
    layer.borderWidth = width
  }
}
