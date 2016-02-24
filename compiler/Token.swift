//
//  Token.swift
//  compiler
//
//  Created by Evan Hopkins on 2/23/16.
//  Copyright © 2016 evanjhopkins. All rights reserved.
//

import Foundation

class Token {

    var value: String
    var lineNum: Int
    
    init() {
        value = "val"
        lineNum = 0
    }
    
    func extend(extendee: String) {
        value = value + extendee
    }
    
}