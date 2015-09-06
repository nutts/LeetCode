//
//  ZigZag.swift
//  LeetCode
//
//  Created by 遂 李 on 7/5/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation


class ZigZag{
    
    
    class func convert(text: String, nRows : Int) -> String{
        

        
        var currIndex : Int = 0
        
        var currCol : Int = 0
        
        var resultString : String = String("")
        
        var textSize = count(text)
        
        //var nCols :  Int = (textSize + nRows - 1) / nRows
        
        var nCols : Int = 7
//        var result : [[Character]] = [[Character]](count: 4, repeatValue: [Character](count: 5, repeatValue : "0")
        
        var dimensions : [[Character]] = [[Character]](count: nRows, repeatedValue: [Character](count: nCols, repeatedValue: "0"))
        
        println("the first character of string is \(text[0])")
        
        while(currIndex < count(text)){
            
            var flag = currCol % (nRows - 1)
            
            if (flag == 0 ){
                for rowIndex in 0...(nRows - 1){
                    
                    if currIndex < count(text) {
                            dimensions[rowIndex][currCol] = text[currIndex]
                            ++currIndex
                    }else{
                        break
                    }
                }
                
                ++currCol
                
            }else{
                
                var rowIndex = nRows - flag
                
                dimensions[rowIndex - 1][currCol] = text[currIndex]
                
                ++currIndex
                
                ++currCol
            }
    }
        
        
        for a in dimensions{
            for b in a {
                
                if b != "0" {
                    resultString += String(b)
                }
            }
        }
        
        return resultString
        
        
        
    }
}