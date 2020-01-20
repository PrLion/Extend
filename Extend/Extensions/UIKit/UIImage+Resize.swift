//
//  UIImage+Resize.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import UIKit

public extension UIImage {
  @available(iOS 10.0, *)
  func resize(new size: CGSize) -> UIImage? {
    defer { UIGraphicsEndImageContext() }
    UIGraphicsBeginImageContextWithOptions(size, true, 1)
    draw(in: CGRect(origin: .zero, size: size).integral)
    return UIGraphicsGetImageFromCurrentImageContext()
  }
  
  @available(iOS 10.0, *)
  func resize(maxSide size: CGFloat) -> UIImage? {
    let factor = size / max(self.size.width, self.size.height)
    return resize(new: CGSize(width: self.size.width * factor, height: self.size.height * factor))
  }
}
