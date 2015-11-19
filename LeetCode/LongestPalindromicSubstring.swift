//
//  LongestPalindromicSubstring.swift
//  LeetCode
//
//  Created by 遂 李 on 8/24/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

public class LongestPalindromicSubstring{
    
    static var max_String = String()
    
    public class func longestPalindrome(s : String ) -> String{
        
        for var i = 1 ; i < (s.characters.count - 1) ; ++i {
            
            let s = getPalindromicString(s, index : i)
            
            if s != nil {
                if s!.characters.count > max_String.characters.count{
                    max_String = s!
                }
            }
            
        }
        
        return max_String
        
    }
    
    class func getPalindromicString( s: String, index : Int ) -> String?{
        
        var leftIndex : Int
        var rightIndex : Int
        
        if s[index] == s[index - 1] {
            leftIndex = index - 2
            rightIndex = index + 1
        }else {
            leftIndex = index - 1
            rightIndex = index + 1
            
        }
        
        while leftIndex >= 0 && rightIndex < s.characters.count {
            
            if s[leftIndex] == s[rightIndex] {
                //是回文
                leftIndex--
                rightIndex++
            }else{
                //不是回文, return range of leftIndex + 1, rightIndex - 1
                if (leftIndex + 1) == (rightIndex - 1){
                    //那么指向同一个记录，那就没有回文
                    return nil
                }else{
                    //返回回文的字符
                    return s.substringWithRange(Range<String.Index>(start: s.startIndex.advancedBy(leftIndex + 1), end: s.startIndex.advancedBy(rightIndex)))
                    
                }
            }
        }
        
        //超过了字符的边界
        if leftIndex == -1 {
            //获取回文
            return s.substringWithRange(Range<String.Index>(start: s.startIndex, end: s.startIndex.advancedBy(rightIndex)))
        }else if rightIndex == s.characters.count{
            return s.substringWithRange(Range<String.Index>(start: s.startIndex.advancedBy(leftIndex + 1), end: s.endIndex))
            
        }else{
            return nil
        }
        
        
        
    }

}