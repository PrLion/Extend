//
//  NSObject+ClassName.swift
//  Extend
//
//  Created by Roman Derevianko on 14.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import Foundation

public extension NSObject {
  static var className: String {
    return try! String(describing: self).substringMatches(regex: "[[:word]]+").first!
  }
}
