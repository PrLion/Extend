//
//  UICollectionView+Dequeue.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//
import UIKit

public extension UICollectionView {
  func dequeue<T: UICollectionViewCell & Reusable>(with identifire: String = T.reuseIdentifier, for indexPath: IndexPath) -> T {
    return dequeueReusableCell(withReuseIdentifier: identifire, for: indexPath) as! T
  }
  
  func dequeue<T: UICollectionReusableView & Kindable>(ofKind kind: String = T.kind, with identifire: String = T.reuseIdentifier, for indexPath: IndexPath) -> T {
    return dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: identifire, for: indexPath) as! T
  }
}
