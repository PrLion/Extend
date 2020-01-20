//
//  Kindable.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import Foundation

public protocol Kindable: Reusable {
  static var kind: String { get }
}
