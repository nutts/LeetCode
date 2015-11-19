//
//  BinaryAdd.swift
//  LeetCode
//
//  Created by 遂 李 on 8/3/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class BinaryAdd {
    
    class func add( a : String, b : String ) -> String{
        
        let len1 : Int = a.characters.count
        
        let len2  : Int = b.characters.count
        
        let maxLen = len1 > len2 ? len1 : len2
        
        var result = String()
        
        var needStep = false
        
        for var currIndex : Int = 0 ; currIndex < maxLen ; ++currIndex {
            
            var currValue = 0
            
//            if (2 < 4) && (a[currIndex] == 1) {
//                currValue++
//            }
            
            if (currIndex < len1) && a[currIndex] == "1" {
                currValue++
            }
            
            
            if currIndex < len2 && b[currIndex] == "1" {
                currValue++
            }
            
            if needStep {
                currValue++
            }
            
            switch(currValue){
            case 0:
                result = "0" + result
                needStep = false
            case 1:
                result = "1" + result
                needStep = false
            case 2:
                result = "0" + result
                needStep = true
            case 3:
                result = "1" + result
                needStep = true
            default:
                assertionFailure("this currValue should not happend")
            }
        }
        
        if needStep {
            result = "1" + result
        }
        return result
        
    }
}
