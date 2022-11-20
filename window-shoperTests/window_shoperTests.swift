//
//  window_shoperTests.swift
//  window-shoperTests
//
//  Created by Andrew Pylo on 20.11.2022.
//

import XCTest

final class window_shoperTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetHours () throws {
        XCTAssertEqual(Wage.getWage(forWage: 25.0, andPrice: 100.0), 4)
        XCTAssertEqual(Wage.getWage(forWage: 26.6, andPrice: 386.58), 15)
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
