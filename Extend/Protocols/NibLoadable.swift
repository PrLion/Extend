//
//  NibLoadable.swift
//  Extend
//
//  Created by Roman Derevianko on 14.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import UIKit

public protocol NibLoadable: NibRepresentable {
  func loadNib(_ nib: UINib) -> UIView?
}

public extension NibLoadable where Self: UIView {
  @discardableResult
  func loadNib(_ nib: UINib) -> UIView? {
    guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return nil }
    
    addSubview(view)
    
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .clear
    view.frame = bounds
    
    NSLayoutConstraint.activate([
      view.topAnchor.constraint(equalTo: topAnchor),
      view.bottomAnchor.constraint(equalTo: bottomAnchor),
      view.leadingAnchor.constraint(equalTo: leadingAnchor),
      view.trailingAnchor.constraint(equalTo: trailingAnchor)
    ])
    
    return view
  }
}

public extension NibLoadable where Self: UIViewController {
  @discardableResult
  func loadNib(_ nib: UINib) -> UIView? {
    guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return nil }
    
    self.view = view
    return view
  }
}
