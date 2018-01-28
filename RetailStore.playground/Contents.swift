//: Playground - noun: a place where people can play

import UIKit
import XCTest

final class UserCategory<T> {
    var category: T
    init(category:T) {
        self.category = category
    }
    
    
}

let user1 = UserCategory(category: "Employee")
print(user1.category)



final class User<T> {
    var value: T
    init(value:T) {
        self.value = value
    }
    

    
}




class RDTest: XCTestCase {
    
    
    //called before each test invocation
    override func setUp() {
        super.setUp()
    }
    
    
    
//    XCTAssertTrue(, "check1 success.")
//    XCTAssertNotNil(, " instance not created..")
    
}




//execute bst tests
//RDTest.defaultTestSuite.run()

