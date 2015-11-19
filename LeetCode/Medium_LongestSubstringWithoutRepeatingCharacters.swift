//
//  Medium_LongestSubstringWithoutRepeatingCharacters.swift
//  LeetCode
//
//  Created by 遂 李 on 8/17/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class Medium_LongestSubstringWithoutRepeatingCharacters {

    
    class func lengthOfLongestSubstring(input : String) -> Int {
        
        var dic : NSMutableDictionary = NSMutableDictionary()
        
        var maxRepeated : Int = 0
        
        var currRepeated : Int = 0
        
        for var i = 0 ; i < input.characters.count ; i++ {
            
            var current = input[i]
            
            if let v = dic.valueForKey("\(current)") as? Int {
                //has repeated
                if (currRepeated > maxRepeated){
                    maxRepeated = currRepeated
                }
                
                currRepeated = 0
                
                
            }else{
                dic.setValue(1, forKey: "\(current)")
                
                ++currRepeated
                
                
            }
            
        }
        
        return maxRepeated
        
        
    }
    
}