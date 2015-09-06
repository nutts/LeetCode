//
//  ReverseInteger.swift
//  LeetCode
//
//  Created by 遂 李 on 7/6/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class ReverseInteger {
    
    
    class func revert(inputInteger : Int) -> Int{
        
        var result  = String()
        
        if inputInteger < 0 {
            result.append(Character("-"))
            
        }
        
        var currValue = inputInteger
        
        while (currValue > 0 ){
             var a = currValue % 10
            result += "\(a)"
            currValue = currValue / 10
            
        }
        
        return result.toInt()!
        
    }
}