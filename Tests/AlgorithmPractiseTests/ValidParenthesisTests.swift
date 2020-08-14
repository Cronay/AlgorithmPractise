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
        expect("", toBeValid: true)
    }

    func test_singleOpeningParenthesis_isNotValid() {
        expect("(", toBeValid: false)
    }

    // MARK: - Helpers

    private func expect(_ string: String, toBeValid expectedResult: Bool) {
        XCTAssertEqual(string.hasValidParenthesis(), expectedResult)
    }
}
