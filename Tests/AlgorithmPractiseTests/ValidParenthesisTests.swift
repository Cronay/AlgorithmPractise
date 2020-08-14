//
//  ValidParenthesis.swift
//  Created by Cronay on 14.08.20.
//

import XCTest

extension String {
    func hasValidParenthesis() -> Bool {
        return true
    }
}

class ValidParenthesesTests: XCTestCase {

    func test_emptyString_isValid() {
        let testString = ""

        let result = testString.hasValidParenthesis()

        XCTAssert(result)
    }
}
