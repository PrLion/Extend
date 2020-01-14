//
//  String+Regex.swift
//  Extend
//
//  Created by Roman Derevianko on 14.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import Foundation

public extension String {
  func substringMatches(regex: String) throws -> [String] {
    let regex = try NSRegularExpression(pattern: regex, options: [])
    let range = NSMakeRange(0, self.count)
    let matches = regex.matches(in: self, options: [], range: range)
    
    let string = self as NSString
    var substrings = Array<String>()
    matches.forEach {
      substrings.append(string.substring(with: $0.range) as String)
    }
    
    return substrings
  }
}
