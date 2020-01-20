//
//  Reusable.swift
//  Extend
//
//  Created by Roman Derevianko on 14.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import UIKit

public protocol Reusable {
  static var reuseIdentifier: String { get }
}

public extension Reusable where Self: NSObject {
  static var reuseIdentifier: String {
    return className
  }
}
