//
//  GradientDirection.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import UIKit

public enum GradientDirection {
  case vertical
  case horizontal
  case diagonalLeft
  case diagonalRight
  case custom(start: CGPoint, end: CGPoint)
}

extension GradientDirection: RawRepresentable {
  public typealias RawValue = Int?
  
  public var rawValue: RawValue {
    switch self {
    case .vertical: return 0
    case .horizontal: return 1
    case .diagonalLeft: return 2
    case .diagonalRight: return 3
    case .custom: return nil
    }
  }
  
  public init?(rawValue: RawValue) {
    switch rawValue {
    case 0: self = .vertical
    case 1: self = .horizontal
    case 2: self = .diagonalLeft
    case 3: self = .diagonalRight
    default: return nil
    }
  }
}

extension GradientDirection {
  var startPoint: CGPoint {
    switch self {
    case .vertical: return CGPoint(x: 0.5, y: 0.0)
    case .horizontal: return CGPoint(x: 0.0, y: 0.5)
    case .diagonalLeft: return CGPoint(x: 0.0, y: 0.0)
    case .diagonalRight: return CGPoint(x: 1.0, y: 0.0)
    case .custom(let start, _): return start
    }
  }
  
  var endPoint: CGPoint {
    switch self {
    case .vertical: return CGPoint(x: 0.5, y: 1.0)
    case .horizontal: return CGPoint(x: 1.0, y: 0.5)
    case .diagonalLeft: return CGPoint(x: 1.0, y: 1.0)
    case .diagonalRight: return CGPoint(x: 0.0, y: 1.0)
    case .custom(_, let end): return end
    }
  }
}
