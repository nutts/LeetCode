//
//  BubleSort.swift
//  LeetCode
//
//  Created by 遂 李 on 11/9/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import Foundation

class BubleSort {
    
    
    class func sort(var input : [Int]) -> [Int]{
        
        
        for var i = input.count - 1 ; i > 0 ; i-- {
            for var j = 0 ; j < i ; j++ {
                if input[j] < input[j + 1]{
                    //no action
                }else{
                    
                    (input[j], input[j+1]) = (input[j + 1], input[j])
//                    let temp = input[j]
//                    input[j] = input[j + 1]
//                    input[j + 1] = temp
                }
            }
        }
        
        return input
        
    }
    
}