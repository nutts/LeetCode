//
//  ClimbingStairs.swift
//  LeetCode
//
//  Created by 遂 李 on 8/3/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class ClimbingStairs{
    
    
    class func climbStairs( n : Int ) -> Int{
    
        var modresult = n % 3
    
        var divideResult : Int = n / 3
    
        var result : Int = 0
    
        result = divideResult * 3
    
        if modresult == 2 {
            result = result * 2
        }
    
        return result
    }
    
}