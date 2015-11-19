//
//  StringToIntTest.swift
//  LeetCode
//
//  Created by 遂 李 on 7/2/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//


import XCTest

class StringToIntTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConvert() {
        
        var result = StringToInt.convert("123456")
        
        XCTAssertEqual(result!, 123456, "passed")
        
        result  = StringToInt.convert("-1234")
        
        XCTAssertEqual(result!, -1234, "passed")
        
        result  = StringToInt.convert("-1234ABC")
        
        XCTAssertEqual(result!, -1234, "passed")
        
        result  = StringToInt.convert("ABC123")
        
        XCTAssertEqual(result!, -1234, "passed")
        
    }
    
    func testConvert2() {
        
        
        do {
        
            let result2 = try StringToInteger.myAtoi("-123ABC")
            
        }catch StringParseError.InvalidCharacter{
            
            assert(true)
            
        }catch {
            
            print("catch ")
        
        }
        
//        if let result3 = try? StringToInteger.myAtoi("AVC123") else{
//            print("there is fail")
//        }
        
//        let result = try? StringToInteger.myAtoi("-123456")
//        
//        XCTAssertEqual(-123456, result)
        
        
//        XCTAssertEqual(result!, 123456, "passed")
//        
//        result  = StringToInteger.convert("-1234")
//        
//        XCTAssertEqual(result!, -1234, "passed")
//        
//        result  = StringToInteger.convert("-1234ABC")
//        
//        XCTAssertEqual(result!, -1234, "passed")
//        
//        result  = StringToInteger.convert("ABC123")
//        
//        XCTAssertEqual(result!, -1234, "passed")
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
