//
//  StringToInt.swift
//  LeetCode
//
//  Created by 遂 李 on 7/1/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//https://leetcode.com/problemset/algorithms/
//

import Foundation

class StringToInt{
    
    
    class func convert(inputString : String?) -> Int?{
        
        if inputString == nil{
            return nil
        }
        
        let newString = inputString?.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        
        var resultInt = 0
        
        
        var isPositive : Bool = true
        
        for oneChar in newString!.characters {
            print(oneChar)
            
            if oneChar == "+" {
                isPositive = true
            }
            
            if oneChar == "-" {
                isPositive = false
            }
            
            if let currInt = Int(String(oneChar)) {
                resultInt = resultInt * 10 + currInt
                
            }
        
        }
        
        if !isPositive {
            
            return 0 - resultInt
        
        }else{
            
            return resultInt
        }
        
        //return inputString?.toInt()
        
    }
}