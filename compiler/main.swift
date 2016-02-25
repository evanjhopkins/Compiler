//
//  main.swift
//  compiler
//
//  Created by Evan Hopkins on 1/28/16.
//  Copyright © 2016 evanjhopkins. All rights reserved.
//

import Foundation

func input() -> String {
    print("[Lexer] <- ", terminator:"")
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    return NSString(data: inputData, encoding:NSUTF8StringEncoding) as! String
}


let lexer = Lexer()

let userInput = "{ if (5==5) }"

let tokens: [Token] = lexer.getLexy(userInput)

let parser = Parser(tokenss: tokens)

//print("[ ", terminator: "")
//for token in tokens {
//    print(" \""+token.value+"\", ", terminator: "")
//}
//print("]")

parser.parse()

