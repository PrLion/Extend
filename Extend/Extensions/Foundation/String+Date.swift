//
//  String+Date.swift
//  Extend
//
//  Created by Roman Derevianko on 22.05.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import Foundation

public extension String {
  var convertToDate: Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    return dateFormatter.date(from: self)
  }
}
