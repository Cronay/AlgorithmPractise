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
        if self.contains("()") {
            let newString = self.replacingOccurrences(of: "()", with: "")
            return newString.hasValidParenthesis()
        }
        return false
    }
}

class ValidParenthesesTests: XCTestCase {

    func test_emptyString_isValid() {
        expect("", toBeValid: true)
    }

    func test_singleParenthesis_isNotValid() {
        expect("(", toBeValid: false)
        expect(")", toBeValid: false)
    }

    func test_OpeningAndClosingParenthesis_isValid() {
        expect("()", toBeValid: true)
    }

    func test_ClosingAndOpeningParenthesis_isNotValid() {
        expect(")(", toBeValid: false)
    }

    // MARK: - Helpers

    private func expect(_ string: String, toBeValid expectedResult: Bool) {
        XCTAssertEqual(string.hasValidParenthesis(), expectedResult)
    }
}
