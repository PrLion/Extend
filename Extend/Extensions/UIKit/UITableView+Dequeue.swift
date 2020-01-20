//
//  UITableView+Dequeue.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import UIKit

public extension UITableView {
  func dequeue<T: UITableViewCell & Reusable>(with identifier: String = T.reuseIdentifier, for indexPath: IndexPath) -> T {
    return dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! T
  }
  
  func dequeue<T: UITableViewHeaderFooterView & Reusable>(with identifier: String = T.reuseIdentifier) -> T {
    return dequeueReusableHeaderFooterView(withIdentifier: identifier) as! T
  }
}
