//
//  ThreeSum.swift
//  LeetCode
//
//  Created by 遂 李 on 8/29/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class ThreeSum {
    
    //这个是我的最初的版本， 需要优化，没有时间优化，看了答案以后逻辑很清楚了。
    class func threeSum(input : [Int] ) -> Set<String>{
        
        var hm = [Int : Int]()
        
        var result = [[Int]]()
        
        for var i = 0 ; i < input.count ; i++ {
            hm[input[i]] = i
        }
        
        var result2 : Set<String> = []
        
        for var a = 0 ; a < input.count - 1 ; ++a {
            for var b = a + 1 ; b < input.count ; ++b {
                let c = 0 - input[a] - input[b]
                
                if hm[c] != nil {
                    if c != a && c != b {
                        print("there is matched result \(input[a]) , \(input[b]) , \(c)")
                        
                        var arrangeArray = [input[a], input[b], c]
                        
                        arrangeArray.sortInPlace({$0 < $1})
                        //sort(&arrangeArray)
                        
                        
                        result.append(arrangeArray)
                        
                        result2.insert(arrangeArray.description)
                        
                    }
                }
            }
        }
        
        return result2
        
    }
}