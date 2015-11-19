//
//  MedianOfTwoSortedArrays.swift
//  LeetCode
//
//  Created by 遂 李 on 11/4/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import Foundation

class MedianOfTwoSortedArrays{
    
    func findMedianSortedArrays(nums1 : [Int], nums2 : [Int]) -> Int {
        
        var result = [Int]()
        
        var nums1Index = 0
        
        var nums2Index = 0
        
        
        while nums1Index < nums1.count && nums2Index < nums2.count {
            
            if nums1[nums1Index] < nums2[nums2Index] {
                result.append(nums1[nums1Index])
                
                ++nums1Index
            }else{
                result.append(nums2[nums2Index])
                
                ++nums2Index
            }
        }
        
        if nums1Index == nums1.count {
            //append all nums2 left
            for ; nums2Index < nums2.count; ++nums2Index{
                result.append(nums2[nums2Index])
            }
        }
        
        if nums2Index == nums2.count {
            for ; nums1Index < nums1.count; ++nums1Index {
                result.append(nums1[nums1Index])
            }
        }
        
        let mediaIndex : Int = result.count / 2
        
        return result[mediaIndex]
        
    }
    
    func findKth(nums1 : [Int], nums2 : [Int], kth : Int ) -> Int{
        
        if nums1.count == 0 {
            return nums2[ kth - 1]
        }
        
        if nums2.count == 0 {
            return nums1[kth - 1]
        }
        
        if kth == 0 {
            return nums1[0] < nums2[0] ? nums1[0] : nums2[0]
        }
        
        let m = kth / 2 - 1
        
        if (nums1[m] < nums2[m]){
           //NEEDFIX
           // return findKth(nums1[0..<2], nums2, kth - m )
            return findKth(nums1, nums2: nums2, kth: kth - m)
        }else{
            return 2 //TODO
        }
        
    }
    
}