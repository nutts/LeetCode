//
//  ThreeSumClosest.swift
//  LeetCode
//
//  Created by 遂 李 on 8/31/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class ThreeSumClosest {
    
    
    class func threeSumClosest(nums : [Int], target : Int ) -> Int {
        
        
        //nums.sort(<#T##isOrderedBefore: (Int, Int) -> Bool##(Int, Int) -> Bool#>)
        let orderedSum = nums.sort({ $0 < $1 })
        
        var closeset = Int.max
        var closesetSum = Int.max
        
        
        for var a = 0 ; a < orderedSum.count - 2 ; a++ {
            for var b = a + 1 ; b < orderedSum.count - 1 ; b++ {
                for var c = b + 1 ; c < orderedSum.count; c++ {
                    
                    if abs( orderedSum[a] + orderedSum[b] + orderedSum[c] - target) < closeset {
                        
                        closeset = abs(orderedSum[a] + orderedSum[b] + orderedSum[c] - target)
                        
                        print("the closest data are (\(orderedSum[a]), \(orderedSum[b]), \(orderedSum[c]))")
                        
                        closesetSum = orderedSum[a] + orderedSum[b] + orderedSum[c]
                        
                    }
                }
            }
        }
        
        return closesetSum
        
    }
    
    //优化后的, 我相信不是最优的
    class func threeSumClosest2(nums : [Int], target : Int ) -> Int {
        
        let orderedSum = nums.sort({ $0 < $1 })
        
        var closest = Int.max
        
        var closestSum = Int.max
        
        var maxC = orderedSum.count - 1
        
        for var a = 0 ; a < orderedSum.count - 2 ; a++ {
           
            for var b = a + 1 ; b < orderedSum.count - 1 ; b++ {
                
                var previousClosest = Int.max
                
                for var c = b + 1 ; c < orderedSum.count ; c++ {
                    
                    let currentCloset = abs (orderedSum[a] + orderedSum[b] + orderedSum[c] - target)
                    
                    if currentCloset <= previousClosest {
                        previousClosest = currentCloset
                        
                        if c == orderedSum.count - 1 {
                            //this is the last one, matches the closest
                            if closest > currentCloset {
                                closest = currentCloset
                                closestSum = orderedSum[a] + orderedSum[b] + orderedSum[c]
                            }
                        }
                    
                    }else{
                        //oops, we are away to closest, previous is the closes in the loop
                        if closest > previousClosest {
                            closest = previousClosest
                            
                            print("the closest data are (\(orderedSum[a]), \(orderedSum[b]), \(orderedSum[c]))")
                            
                            closestSum = orderedSum[a] + orderedSum[b] + orderedSum[c]
                        }

                        break
                        
                    }
                    
                }
                
            }
                
            
        }
        
        return closestSum
        
    }
    

    
}