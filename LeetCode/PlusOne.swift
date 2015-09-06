//
//  PlusOne.swift
//  LeetCode
//
//  Created by 遂 李 on 8/1/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class PlusOne{
    
    
    class func plusOne(var digits : [Int]) -> [Int]{
        
        var needAddToHigh = false
        
        for var i = ( digits.count - 1 ) ; i >= 0 ; --i {
            
            if digits[i] == 9 {
                digits[i] = 0
                needAddToHigh = true
            }else{
                digits[i] = digits[i] + 1
                needAddToHigh = false
            }
            
            if needAddToHigh == false{
                return digits
            }
            
            
        }
        
        if needAddToHigh == true{
            digits.insert(Int(1), atIndex: 0)
            
        }
        
        return digits
    }
}