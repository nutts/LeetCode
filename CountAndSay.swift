//
//  CountAndSya.swift
//  LeetCode
//
//  Created by 遂 李 on 7/26/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class CountAndSay{
    
    
    class func getTheNthString(number : Int) -> String{
        
        var result : String = String("1")
        
        for _ in 1...number{
            
            result = getNextString(result)
            
        }
        
        return result
        
    }
    
    class func getNextString(currStr : String) -> String{
        
        var previousChar : Character = currStr[0]
        var repeatCount : Int = 1
        var newString  = String()
        
        for var i = 1 ; i < currStr.characters.count ; ++i {
            
            if previousChar == currStr[i] {
                ++repeatCount
            }else{
                
                //newString.append(Character(UnicodeScalar(repeatCount)))
                newString += "\(repeatCount)"
                newString.append(previousChar)
                previousChar = currStr[i]
                repeatCount = 1
            }
        }
        
        newString += "\(repeatCount)"
        
        newString.append(previousChar)
        
        return newString
    }
    
}