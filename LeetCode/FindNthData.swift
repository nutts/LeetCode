//
//  FiveBoxes.swift
//  LeetCode
//
//  Created by 遂 李 on 11/8/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import Foundation

public class FindNthData{
    
    
    class func find(input : [Int]) -> Int{
        
        var fiveBoxes : [Int] = input[0...5].sort()
        
        for var i = 5; i < input.count; i++ {
            if input[i] < fiveBoxes[4] {
                //just skip this value
            }else{
                
                fiveBoxes[4] = input[i]
                
                fiveBoxes.sortInPlace()
            }
        }
        
        return fiveBoxes[4]
        
        
    }
    
    
}