//
//  CharacterSet+Sets.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import Foundation

public extension CharacterSet {
  static var phoneNumberSet: CharacterSet {
    var set = CharacterSet.decimalDigits
    set.insert(charactersIn: "+")
    return set
  }
}
