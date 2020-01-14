//
//  NibRepresentable.swift
//  Extend
//
//  Created by Roman Derevianko on 14.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import UIKit

public protocol NibRepresentable {
  static var bundle: Bundle { get }
  static var nibName: String { get }
  static var nib: UINib { get }
}

public extension NibRepresentable where Self: NSObject {
  static var bundle: Bundle {
    return Bundle(for: self)
  }
  
  static var nibName: String {
    return className
  }
  
  static var nib: UINib {
    return UINib(nibName: nibName, bundle: bundle)
  }
}
