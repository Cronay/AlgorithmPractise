//
//  ValidParenthesis.swift
//  Created by Cronay on 14.08.20.
//

import XCTest

extension String {
    func hasValidParenthesis() -> Bool {
        if self.isEmpty {
            return true
        }
        if self.count == 1 {
            return false
        }
        fatalError()
    }
}

class ValidParenthesesTests: XCTestCase {

    func test_emptyString_isValid() {
        let testString = ""

        let result = testString.hasValidParenthesis()

        XCTAssert(result)
    }

    func test_singleOpeningParenthesis_isNotValid() {
        let testString = "("

        let result = testString.hasValidParenthesis()

        XCTAssertFalse(result)
    }
}
