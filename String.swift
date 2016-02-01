//
//  String.swift
//  Hitori News
//
//  Created by Hitori Achmad on 2/2/16.
//  Copyright © 2016 Hitori Achmad. All rights reserved.
//
import Foundation

extension String {
    static func className(aClass: AnyClass) -> String {
        return NSStringFromClass(aClass).componentsSeparatedByString(".").last!
    }
    
    func substring(from: Int) -> String {
        return self.substringFromIndex(self.startIndex.advancedBy(from))
    }
    
    var length: Int {
        return self.characters.count
    }
}