//
//  ContainerWithMostWater .swift
//  LeetCode
//
//  Created by 遂 李 on 8/27/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

 class ContainerWithMostWater {
    
    
    class func maxArea(height : [Int]) -> Int {
        var max_area : Int = 0
        
        for var i = 0 ; i < height.count - 1 ; i++ {
            for var j = i + 1 ; j < height.count ; j++ {
                let newArea = getArea(height, i: i, j: j)
                
                if newArea > max_area {
                    max_area = newArea
                }
            }
        }
        
        return max_area
        
    }
    
    
    class func getArea(height: [Int], i : Int, j : Int) -> Int {
        
        return min( i, j ) * ( height[i] + height[j])
        
    }
}