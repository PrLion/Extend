//
//  NSAttributedString+Attachment.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import UIKit

public extension NSAttributedString {
  convenience init(attachment: NSTextAttachment, attributes attrs: [NSAttributedString.Key : Any]?) {
    let str = NSMutableAttributedString(attachment: attachment)
    str.addAttributes(attrs ?? [:], range: .init(location: 0, length: str.length))
    self.init(attributedString: str)
  }
}
