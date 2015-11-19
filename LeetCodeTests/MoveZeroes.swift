//
//  MoveZeroes.swift
//  LeetCode
//
//  Created by 遂 李 on 11/15/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import Foundation

class MoveZeroes {
    
    var nums : [Int]
    
    init( v: [Int]){
        
        nums = v
    }
    
    
    func moveZeroes(){
        
        var zeroCount = 0
        
        for var i = 0 ; i < nums.count - zeroCount; i++ {
            
            if nums[i] == 0 {
                
                doSwap(i)
                
                ++zeroCount
            }
        }
        
    }
    
    func moveZeros2(){
        
        var zeroIndex = 0
        var nonZeroIndex = 0
        
        while nonZeroIndex < nums.count{
            
            if nums[zeroIndex] == 0 && nums[nonZeroIndex] != 0 {
                
                //进行交换
                
                nums[zeroIndex] = nums[nonZeroIndex]
                
                nums[nonZeroIndex] = 0
                
                ++zeroIndex
                
                ++nonZeroIndex
                
                
            }else if nums[zeroIndex] != 0 {
                ++zeroIndex
                
            }else if nums[nonZeroIndex] == 0 {
                
                ++nonZeroIndex
            }
            
        }
        
    }
    
    private func doSwap(let startIndex : Int){
        
        var endIndex = startIndex + 1
        
        for ; endIndex < nums.count ; ++endIndex {
            
            if nums[endIndex] == 0 {
                continue
            }else{
                break
            }
        }
        
        if endIndex == nums.count {
            //没有找到可以交换的非0数值
            
            print("不需要再交换了")
        }else{
            
            print("++++++swapped")
            
            nums[startIndex] = nums[endIndex]
            nums[endIndex] = 0
            
            
            
            print(nums.description)
            
        }
        
        
        
    }
    
    
}