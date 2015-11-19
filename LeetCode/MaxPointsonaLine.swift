//
//  MaxPointsonaLine.swift
//  LeetCode
//
//  Created by 遂 李 on 9/26/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class Point{
    
    let x: Int
    let y : Int
    
    init(x : Int, y : Int){
        self.x = x
        self.y = y
    }
    
    
}
class MaxPointsonaLine {
    
    
    class func maxPoints(points : [Point]) -> Int{
        
        let sortedPoints = points.sort { (a : Point, b: Point) -> Bool in
            if a.x < b.x {
                return true
            }else{
                return false
            }
        }
        
        var maxPoints = 0
        var currentIndex = 0
        
        while ( sortedPoints.count - currentIndex ) > maxPoints {
            
            let firstPoint = sortedPoints[currentIndex]
            
            var currCycleRatio = [Double : Int]()
            
            for var i = currentIndex + 1 ; i < sortedPoints.count ; ++i {
                let ratio : Double = calculateRatio(firstPoint, secondPoint: sortedPoints[i])
                
                if let cValue = currCycleRatio[ratio]{
                    currCycleRatio[ratio] = cValue + 1
                }else{
                    currCycleRatio[ratio] = 1
                }
            }
            
            //get the max value
            
            maxPoints = currCycleRatio.values.maxElement() ?? maxPoints
            
            
            if currCycleRatio.values.maxElement() > maxPoints {
            
            }
        
        
            
            
        }
        
        
        return 0
    }
    
    class func calculateRatio(firstPoint : Point, secondPoint : Point ) -> Double {
        return 0.0
    }
}