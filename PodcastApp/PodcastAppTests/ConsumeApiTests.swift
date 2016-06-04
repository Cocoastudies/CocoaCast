//
//  ConsumeApiTests.swift
//  PodcastApp
//
//  Created by Bruno Da luz on 6/3/16.
//  Copyright © 2016 cocoastudies. All rights reserved.
//

import XCTest

@testable import PodcastApp

class ConsumeApiTests: BaseTestCase {

    func testCheckConnection() {
        XCTAssertTrue(Reachability.isConnection(), "check your network!!!")
    }

    func testConsumeWithoutPreferenceForTitle() {
        let consumeAPI = ConsumeAPI()
        
        //given
        
        let expectation = expectationWithDescription("request should succeed")
        
        consumeAPI.fetch { (result) in
            
            //then
            switch result {
            case .Sucess(let value):
                print(value)
                XCTAssertNotNil(result, "result not should be nil")
                
                break
                
            case .Failure:
                XCTFail("An occurred error...")
                break
            }
            
            expectation.fulfill()
        }
        
        waitForExpectationsWithTimeout(timeout, handler: nil)
    }
    
}
