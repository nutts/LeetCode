//
//  RotateArray.swift
//  LeetCode
//
//  Created by 遂 李 on 11/8/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import Foundation

class RotateArray{
    
    
    class func rotate(var nums : [Int], k : Int ) -> [Int]{
        
        for var i = 0; i < k ; ++i {
            
            if let lastInt = nums.last{
                nums.removeLast()
                nums.insert(lastInt, atIndex: 0)
            }
        }
        
        return nums
    }
    
}