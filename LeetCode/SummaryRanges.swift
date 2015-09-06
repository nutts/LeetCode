//
//  SummaryRanges.swift
//  LeetCode
//
//  Created by 遂 李 on 6/30/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class SummaryRanges {
    
    class func convert(input : [Int]) -> [String]{
        
        var input2 = input
        
        var currentStart = input2[0]
        
        var currentEnd : Int
        
        var result  = [String]()
        
        input2.append(Int(9999))
        
        for var i = 0; i < input2.count - 1; ++i {
            
            if (input2[i] + 1) < input2[i + 1] {
                
                currentEnd = input2[i]
                
                if(currentStart == currentEnd){
                    result.append("\(currentStart)")
                }else{
                    result.append("\(currentStart)->\(currentEnd)")
                }
                
                currentStart = input2[i+1]
                
            }
        }
        
        return result
        
        
        
    }
}