//
//  UINavigationItem+BackTitle.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import UIKit

public extension UINavigationItem {
  func setBackButtonTitle(_ title: String) {
    perform(NSSelectorFromString("setBackButtonTitle:"), with: title)
  }
}
