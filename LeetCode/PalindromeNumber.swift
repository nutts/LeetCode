//
//  PalindromeNumber.swift
//  LeetCode
//
//  Created by 遂 李 on 7/8/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class PalindromeNumber{
    
    
    class func check(inputInt : Int) -> Bool{
        
        var str : String! = nil
        
        
        if inputInt < 0 {
            str = "\(-inputInt)"
        }else{
            str = "\(inputInt)"
        }
        
        let length = count(str)
        
        for var v = 0 ; v < (length / 2); ++v {
            
            if( str[v] != str[length - v - 1]){
                return false
            }
        }
        
        return true
        
        
        
    }
}