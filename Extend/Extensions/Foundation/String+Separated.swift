//
//  String+Separated.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import Foundation

public extension StringProtocol where Self: RangeReplaceableCollection {
  mutating func insert(_ separator: Self, every n: Int) {
    for index in indices.reversed() where index != startIndex && distance(from: startIndex, to: index) % Int(n) == 0 {
      insert(contentsOf: separator, at: index)
    }
  }
  
  func inserting(_ separator: Self, every n: Int) -> Self {
    var string = self
    string.insert(separator, every: n)
    return string
  }
}
