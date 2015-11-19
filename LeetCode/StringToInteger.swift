//
//  StringToInteger.swift
//  LeetCode
//
//  Created by 遂 李 on 11/9/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import Foundation

enum StringParseError : ErrorType{
    case InvalidCharacter
}

class StringToInteger{
    
    
    
    static let  valueMap : [Character : Int] = [
        "0": 0,
        "1" : 1,
        "2" : 2,
        "3" : 3,
        "4" : 4,
        "5" : 5,
        "6" : 6,
        "7" : 7,
        "8" : 8,
        "9" : 9
     ]
    
    class func myAtoi(str : String) throws -> Int{
        
        
        var chars = str.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet()).characters
        
        var positiveSign = true
        
        if let firstChar = chars.first{
            if firstChar == "+" {
                positiveSign = true
                chars.removeFirst()
            }else if firstChar == "-" {
                positiveSign = false
                chars.removeFirst()
            }
        }
        
        var resultValue : Int = 0
        
        for tmpChar : Character in chars {
            
            if valueMap.keys.contains(tmpChar){
                resultValue = resultValue * 10 + valueMap[tmpChar]!
            }else{
                throw StringParseError.InvalidCharacter
            }
        }
        
        if positiveSign == false {
            return 0 - resultValue
        }else{
            return resultValue
        }
        
    }
}