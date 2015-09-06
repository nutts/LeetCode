//
//  Medium_TwoSum.swift
//  LeetCode
//
//  Created by 遂 李 on 8/4/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class Medium_TwoSum{
    
    class func twoSum(nums : [Int], target : Int) -> (index1 : Int, index2 : Int ){
        
        for var i = 0 ; i < nums.count ; ++i {
            
            for var j = i + 1 ; j < nums.count ; ++j {
                
                if nums[i] + nums[j] == target {
                    return (i + 1, j + 1)
                }
                
            }
        }
        
        return (0, 0)
    }
    
}