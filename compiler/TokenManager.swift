//
//  TokenManager.swift
//  compiler
//
//  Created by Evan Hopkins on 2/24/16.
//  Copyright © 2016 evanjhopkins. All rights reserved.
//

import Foundation

class TokenManager: CompilerComponentProtocol {
    let CLASSNAME: String = "TOKEN_MNGR"
    let VERBOSE: Bool = true
    let tokens: [Token]
    var pointer: Int
    
    init(tokens: [Token]) {
        self.tokens = tokens
        self.pointer = 0
    }
    
    func consumeNextToken() -> Token {
        let nextToken = tokens[pointer]
        pointer += 1
        return nextToken
    }
    
    func peekNextToken() -> Token? {
        if !hasNextToken(){
            return nil
        }
        let nextToken = tokens[pointer]
        return nextToken
    }
    
    func hasNextToken() -> Bool {
        if pointer >= tokens.count{
            return false
        }
        return true
    }
    
    func size() -> Int {
        return tokens.count
    }
    
}