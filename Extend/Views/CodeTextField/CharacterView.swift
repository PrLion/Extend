//
//  CharacterView.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import UIKit

class CharacterView: NibView {
  // MARK: - Outlets
  
  @IBOutlet private var characterLabel: UILabel! {
    didSet {
      characterLabel.text = nil
      characterLabel.textColor = tintColor
    }
  }
  
  // MARK: - Properties
  
  override var tintColor: UIColor! {
    didSet {
      layer.borderColor = tintColor.cgColor
      characterLabel.textColor = tintColor
    }
  }
  
  private lazy var widthConstraint: NSLayoutConstraint = {
    widthAnchor.constraint(equalToConstant: 0)
  }()
  
  private lazy var heightConstraint: NSLayoutConstraint = {
    heightAnchor.constraint(equalToConstant: 0)
  }()
  
  var width: CGFloat {
    get { return widthConstraint.constant }
    set { widthConstraint.constant = newValue }
  }
  
  var height: CGFloat {
    get { return heightConstraint.constant }
    set { heightConstraint.constant = newValue }
  }
  
  var font: UIFont! {
    get { return characterLabel.font }
    set { characterLabel.font = newValue }
  }
  
  var text: String? {
    get { return characterLabel.text }
    set { characterLabel.text = newValue }
  }
  
  // MARK: - Lifecycle
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  override func viewDidInit() {
    super.viewDidInit()
    translatesAutoresizingMaskIntoConstraints = false
    border(color: tintColor, width: 1 / UIScreen.main.scale, radius: 5)
    backgroundColor = .white
  }
  
  override func didMoveToWindow() {
    widthConstraint.priority = UILayoutPriority(999)
    heightConstraint.priority = UILayoutPriority(999)
    widthConstraint.isActive = true
    heightConstraint.isActive = true
  }
}

