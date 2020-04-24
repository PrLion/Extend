//
//  Collection+Section.swift
//  diff-kit
//
//  Created by Roman Derevianko on 25.04.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import Foundation
import UIKit

public extension MutableCollection where Element: Section, Index == Int {
  subscript(indexPath: IndexPath) -> Element.Item {
    get { return self[indexPath.section].items[indexPath.row] }
    set { self[indexPath.section].items[indexPath.row] = newValue }
  }
  
  func countOfItems(in section: Int) -> Int {
    return self[section].items.count
  }
  
  func firstIndexPath(where predicate: (Element.Item) throws -> Bool) rethrows -> IndexPath? {
    for section in 0..<count {
      for item in 0..<countOfItems(in: section) {
        if try predicate(self[section].items[item]) {
          return IndexPath(item: item, section: section)
        }
      }
    }
    return nil
  }
  
  func first(where predicate: (Element.Item) throws -> Bool) rethrows -> Element.Item? {
    guard let indexPath = try firstIndexPath(where: predicate) else { return nil }
    return self[indexPath]
  }
  
  mutating func append(_ newElement: Element.Item, in section: Int) {
    self[section].items.append(newElement)
  }
  
  mutating func append(_ newElement: Element.Item) {
    if count > 0 {
      self[count - 1].items.append(newElement)
    }
  }
  
  mutating func insert(_ newElement: Element.Item, at section: Int) {
    self[section].items.append(newElement)
  }
  
  mutating func insert(_ newElement: Element.Item, at indexPath: IndexPath) {
    self[indexPath.section].items.insert(newElement, at: indexPath.row)
  }
  
  mutating func remove(at indexPath: IndexPath) {
    self[indexPath.section].items.remove(at: indexPath.row)
  }
  
  mutating func removeFirst(where predicate: (Element.Item) throws -> Bool) rethrows {
    if let indexPath = try firstIndexPath(where: predicate) {
      remove(at: indexPath)
    }
  }
  
  mutating func removeAll(where shouldBeRemoved: (Element.Item) throws -> Bool) rethrows {
    for section in (0..<count).reversed() {
      for item in (0..<countOfItems(in: section)).reversed() {
        if try shouldBeRemoved(self[section].items[item]) {
          self[section].items.remove(at: item)
        }
      }
    }
  }
  
  func forEach(_ body: (IndexPath, Element.Item) throws -> Void) rethrows {
    for section in (0..<count) {
      for item in (0..<countOfItems(in: section)) {
        let indexPath = IndexPath(item: item, section: section)
        try body(indexPath, self[indexPath])
      }
    }
  }
}
