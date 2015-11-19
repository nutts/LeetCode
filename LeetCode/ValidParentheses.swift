//
//  ValidParentheses.swift
//  LeetCode
//
//  Created by 遂 李 on 7/17/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class ValidParentheses{
    
    class func isValid(a : String) -> Bool{
        var checkStr = ""
        
        for c in a.characters {
            switch(c){
            case "(", "{", "}":
                checkStr.append(c)
            case "}":
                if checkStr.lastChar == "{" {
                    print("is valid")
                    checkStr.removeLastChar()
                }else{
                    return false
                }
            case ")":
                if checkStr.lastChar == "(" {
                    print(" is valid ")
                    checkStr.removeLastChar()
                }else{
                    return false
                }
            case "]":
                if checkStr.lastChar == "["{
                    print("is valid")
                    checkStr.removeLastChar()
                }else{
                    return false
                }
            default:
                print("ignore")
            }
        }
        if checkStr != "" {
            return false
        }else{
            return true
        }
      
    }
    
    
    
}