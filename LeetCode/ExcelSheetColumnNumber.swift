//
//  ExcelSheetColumnNumber.swift
//  LeetCode
//
//  Created by 遂 李 on 11/19/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import Foundation

enum ConversionError : ErrorType{
    case Invalid_Character
    
}
class ExcelSheetColumnNumber{
    
    
    static let map : [Character: Int] = ["A" : 1, "B" : 2, "C" :3, "D" :4, "E": 5, "F":6, "G": 7, "H": 8, "I": 9, "J": 10,
        "K" : 11, "L": 12, "M": 13, "N":14, "O":15, "P":16, "Q": 17, "R":18, "S":19, "T": 20, "U":21, "V": 22, "W":23, "X":24, "Y":25, "Z":26 ]
    
    
    class func titleToNumber(s : String) throws -> Int{
        var resultValue : Int = 0
        
        
        for c in s.characters {
            
            guard let currCharacter = map[c] else{
           
                throw ConversionError.Invalid_Character
            }
 
            resultValue = resultValue * 26 + currCharacter
        
        }
        
        return resultValue
        
    }
    
    
}