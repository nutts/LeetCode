//
//  DontKnowName.swift
//  LeetCode
//
//  Created by 遂 李 on 8/3/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class DontKnowName {
    
    
    class func convert(num : Int) -> [[Int]]{
        
        var result = Array(count: num, repeatedValue: Array(count: num, repeatedValue: 0))
        var currCirl = 0
        
        var value = 0;
        
        var maxValue = num * num
        
        
        //the first line
        while value <= maxValue && currCirl < num{
        
            for var x = currCirl; x < ( num - currCirl) ; x++ {
                if result[currCirl][x] == 0 {
                    result[currCirl][x] = ++value
                }
                
            }
            
            for var y = ( 1 + currCirl) ; y < (num - currCirl) ; y++ {
                if result[y][num - 1 - currCirl] == 0  {
                    result[y][num - 1  - currCirl] = ++value
                }
            }
            
            for var x = (num - currCirl - 1); x >= (0 + currCirl) ; x-- {
                if result[num - 1 - currCirl][x] == 0 {
                    result[ num - 1 - currCirl][x] = ++value
                }
            }
            
            for var y = (num - currCirl - 1); y >= (1 + currCirl) ; y-- {
                if result[y][currCirl] == 0 {
                    result[y][currCirl] = ++value
                }
            }
            
            ++currCirl

        }
        
        
        
        return result
        
    }
    
    class func print(twoDimension : [[Int]]){
        for var i = 0 ; i < twoDimension.count ; ++i {
            
            var newLine = "";
            for var j = 0 ; j < twoDimension[i].count ; ++j {
                newLine += String(twoDimension[i][j]) + ","
            }
            println(newLine)
        }
    }
}