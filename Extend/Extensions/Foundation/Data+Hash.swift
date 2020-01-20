//
//  Data+Hash.swift
//  Extend
//
//  Created by Roman Derevianko on 21.01.2020.
//  Copyright © 2020 Roman Derevianko. All rights reserved.
//

import Foundation
import CommonCrypto

public extension Data {
  var md5: [UInt8] {
    var digest = Array<UInt8>(repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
    _ = withUnsafeBytes { bytes in
      let buffer: UnsafePointer<UInt8> = bytes.baseAddress!.assumingMemoryBound(to: UInt8.self)
      CC_MD5(buffer, CC_LONG(count), &digest)
    }
    return digest
  }
  
  var sha1: [UInt8] {
    var digest = Array<UInt8>(repeating: 0, count: Int(CC_SHA1_DIGEST_LENGTH))
    _ = withUnsafeBytes { bytes in
      let buffer: UnsafePointer<UInt8> = bytes.baseAddress!.assumingMemoryBound(to: UInt8.self)
      CC_SHA1(buffer, CC_LONG(count), &digest)
    }
    return digest
  }
}
