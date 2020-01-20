//
//  NibView.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import UIKit

open class NibView: UIView, NibLoadable {
  public override init(frame: CGRect) {
    super.init(frame: frame)
    loadNib(type(of: self).nib)
    viewDidInit()
  }
  
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    loadNib(type(of: self).nib)
    viewDidInit()
  }
  
  open func viewDidInit() {}
}

open class NibControl: UIControl, NibLoadable {
  public override init(frame: CGRect) {
    super.init(frame: frame)
    loadNib(type(of: self).nib)?.isUserInteractionEnabled = false
    viewDidInit()
  }
  
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    loadNib(type(of: self).nib)?.isUserInteractionEnabled = false
    viewDidInit()
  }
  
  open func viewDidInit() {}
}
