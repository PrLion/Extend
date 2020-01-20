//
//  UITextView+NumberOfLines.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import UIKit

public extension UITextView {
  var numberOfLines: UInt {
    let numberOfGlyphs = layoutManager.numberOfGlyphs
    var index = 0, numberOfLines = 0
    var lineRange = NSRange(location: NSNotFound, length: 0)
    
    while index < numberOfGlyphs {
      layoutManager.lineFragmentRect(forGlyphAt: index, effectiveRange: &lineRange)
      index = NSMaxRange(lineRange)
      numberOfLines += 1
    }
    
    if let char = text?.last, String(char).rangeOfCharacter(from: .newlines) != nil {
      numberOfLines += 1
    } else if text?.isEmpty ?? true {
      numberOfLines += 1
    }
    
    return UInt(numberOfLines)
  }
}
