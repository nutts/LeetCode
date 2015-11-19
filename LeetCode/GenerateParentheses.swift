//
//  GenerateParentheses.swift
//  LeetCode
//
//  Created by 遂 李 on 9/22/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class GenerateParentheses{
    
    //TODO 性能没有进行优化， O(N^3)
    class func generateParentheses(round : Int) -> [String]{
        
        var result = Dictionary<String, Int>()
        
        GenerateParentheses.getRound(round, str: "", currentResult: &result)
        
        return Array(result.keys)
    
    }
    
    class func getRound(currentRound : Int, str : String, inout currentResult : Dictionary<String, Int>){
        
        if currentRound == 0 {
            
            if let oldValue = currentResult[str] {
                currentResult[str] = oldValue + 1
            }else{
                currentResult[str] = 1
            }
        }else{
            
            getRound( (currentRound - 1), str: str + "()", currentResult: &currentResult)
            
            getRound((currentRound - 1), str: "(" + str + ")", currentResult: &currentResult)
            
            getRound((currentRound - 1), str: "()" + str, currentResult: &currentResult)
            
        }
    }
    
}