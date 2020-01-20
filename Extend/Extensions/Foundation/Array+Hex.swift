//
//  Array+Hex.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import Foundation

public extension Array where Element == UInt8 {
  var hex: String {
    return reduce("") { (result, element) in
      result.appending(String(format: "%02x", element))
    }
  }
}
