//
//  AddDigits.swift
//  LeetCode
//
//  Created by 遂 李 on 11/9/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import Foundation

extension Int {
    
    func split() -> [Int]{
        var result = [Int]()
        
        var currValue = self
        
        while currValue > 0 {
            result.append(currValue % 10)
            currValue = currValue / 10
        }
        
        return result
    }
    
}
class AddDigits{
    
    class func addDigits( num : Int ) -> Int {
        
        if num < 10 {
            
            return num
        
        }else{
            
            let tmp = num.split()
            var tmpValue : Int = 0
            for v in tmp {
                tmpValue += v
            }
            
            return addDigits(tmpValue)
            
            
        }
    }
}