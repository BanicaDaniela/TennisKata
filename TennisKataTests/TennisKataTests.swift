//
//  TennisKataTests.swift
//  TennisKataTests
//
//  Created by Daniela Oana on 22/05/2019.
//  Copyright © 2019 Daniela Oana. All rights reserved.
//

import XCTest
@testable import TennisKata

class TennisKataTests: XCTestCase {
    
    var SUT: TennisScore = TennisScore()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testA() {
        let result = SUT.fromInput(matchPoints: "A")
        XCTAssertEqual("15-love", result)
    }
    
    func testAA() {
        let result = SUT.fromInput(matchPoints: "AA")
        XCTAssertEqual("30-love", result)
    }
    
    func testAAA() {
        let result = SUT.fromInput(matchPoints: "AAA")
        XCTAssertEqual("40-love", result)
    }
    
    func testAAAA(){
        let result = SUT.fromInput(matchPoints: "AAAA")
        XCTAssertEqual("game player A", result)
    }
    
    func testBB(){
        let result = SUT.fromInput(matchPoints: "BB")
        XCTAssertEqual("love-30", result)
    }
    
    func testBBA(){
        let result = SUT.fromInput(matchPoints: "BBA")
        XCTAssertEqual("15-30", result)
    }
    
    func testABA(){
        let result = SUT.fromInput(matchPoints: "ABA")
        XCTAssertEqual("30-15", result)
    }
    
    func testAAABBB() {
        let result = SUT.fromInput(matchPoints: "AAABBB")
        XCTAssertEqual("deuce", result)
    }
    
    func testAAABBBA(){
        let result = SUT.fromInput(matchPoints: "AAABBBA")
        XCTAssertEqual("advantage player A", result)
    }
    
    func testAAABBBABBB(){
        let result = SUT.fromInput(matchPoints: "AAABBBABBB")
        XCTAssertEqual("game player B", result)
    }
    
    func testABAB(){
        let result = SUT.fromInput(matchPoints: "ABAB")
        XCTAssertEqual("30-all", result)
    }
    
    func testAAABBBABB() {
        let result = SUT.fromInput(matchPoints: "AAABBBABB")
        XCTAssertEqual("advantage player B", result)
    }
    
    func testAAABBBAB(){
        let result = SUT.fromInput(matchPoints: "AAABBBAB")
        XCTAssertEqual("deuce", result)
    }
    
    func testABBAC() {
        let result = SUT.fromInput(matchPoints: "ABBAC")
        XCTAssertEqual("invalid sequence", result)
    }
    
    func testABABABAABB(){
        let result = SUT.fromInput(matchPoints: "ABABABAABB")
        XCTAssertEqual("invalid sequence", result)
    }
    
    func testABBBABA(){
        let result = SUT.fromInput(matchPoints: "ABBBABA")
        XCTAssertEqual("invalid sequence", result)
    }

}
