//
//  StringExtension.swift
//  LeetCode
//
//  Created by 遂 李 on 7/5/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

extension String{
    
    subscript( i : Int) -> Character{
        print(self + " and the i is \(i)")
        
        //return self[advance(self.startIndex.advancedBy(i)]
        return self[self.startIndex.advancedBy(i)]
    }
    
    var lastChar : Character{
        
         let count = (self as NSString).length
        
         return self[count - 1]
        
    }
    
    mutating func removeLastChar(){
        let index = self.endIndex.advancedBy(-1)
        
        let result : String = self.substringToIndex(index)
        
        self = result
        
    }
    
    
    
}