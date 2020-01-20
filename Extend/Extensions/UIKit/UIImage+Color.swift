//
//  UIImage+Color.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import UIKit

extension UIImage {
  public convenience init?(color: UIColor, size: CGSize = .init(width: 1, height: 1), opaque: Bool = false, scale: CGFloat = UIScreen.main.scale) {
    UIGraphicsBeginImageContextWithOptions(size, opaque, scale)
    defer { UIGraphicsEndImageContext() }
    
    color.setFill()
    UIBezierPath(rect: .init(origin: .zero, size: size)).fill()
    
    guard let image = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
    self.init(cgImage: image.cgImage!, scale: scale, orientation: image.imageOrientation)
  }
}
