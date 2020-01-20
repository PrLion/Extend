//
//  CGRect+Offsets.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import UIKit
import CoreGraphics

public typealias UIEdgeOffsets = UIEdgeInsets

public extension CGRect {
  func offset(by offsets: UIEdgeOffsets) -> CGRect {
    var rect = self
    rect.origin.x -= offsets.left
    rect.origin.y -= offsets.top
    rect.size.width += offsets.left + offsets.right
    rect.size.height += offsets.top + offsets.bottom
    return rect
  }
}
