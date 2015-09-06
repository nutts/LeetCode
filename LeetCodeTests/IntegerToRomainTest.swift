//
//  IntegerToRomainTest.swift
//  LeetCode
//
//  Created by 遂 李 on 8/28/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import UIKit
import XCTest

class IntegerToRomainTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        
      //  XCTAssertEqual("M", IntegerToRomain.convert("", currValue: 1000), "fail ")
        
      //  XCTAssertEqual("CC", IntegerToRomain.convert("", currValue: 200), "fail ")
        
     //   XCTAssertEqual("XXXIV", IntegerToRomain.convert("", currValue: 34), "fail ")
        
      //  XCTAssertEqual("LXV", IntegerToRomain.convert("", currValue: 65), "fail ")
        
     //    XCTAssertEqual("MDCCCLXXXVIII", IntegerToRomain.convert("", currValue: 1888), "fail ")
      
        XCTAssertEqual("MCM LXXVI", IntegerToRomain.convert("", currValue: 1976), "fail ")
        
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
