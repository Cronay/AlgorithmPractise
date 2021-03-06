//
//  ValidParenthesis.swift
//  Created by Cronay on 14.08.20.
//

import XCTest
import AlgorithmPractise

class ValidParenthesesTests: XCTestCase {

    func test_emptyString_isValid() {
        expect("", toBeValid: true)
    }

    func test_singleParentheses_isNotValid() {
        expect("(", toBeValid: false)
        expect(")", toBeValid: false)
    }

    func test_openingAndClosingParentheses_isValid() {
        expect("()", toBeValid: true)
    }

    func test_closingAndOpeningParentheses_isNotValid() {
        expect(")(", toBeValid: false)
    }

    func test_oddNumberOfParentheses_areNotValid() {
        expect("())", toBeValid: false)
        expect("(()", toBeValid: false)
        expect("((())", toBeValid: false)
        expect("(()))", toBeValid: false)
    }

    func test_longParenthesesExamples_AreValid() {
        expect("(())", toBeValid: true)
        expect("(((())))", toBeValid: true)
        expect("()()()", toBeValid: true)
        expect("()((()()))", toBeValid: true)
    }

    func test_singleCurlyBrackets_areNotValid() {
        expect("{", toBeValid: false)
        expect("}", toBeValid: false)
    }

    func test_curlyBracketPair_isValid() {
        expect("{}", toBeValid: true)
    }

    func test_curlyBracketPairInversed_isInvalid() {
        expect("}{", toBeValid: false)
    }

    func test_longCurlyBracketsExamples_AreValid() {
        expect("{{}}", toBeValid: true)
        expect("{{{{}}}}", toBeValid: true)
        expect("{}{}{}", toBeValid: true)
        expect("{}{{{}{}}}", toBeValid: true)
    }

    func test_longCurlyBracketsExamples_AreInvalid() {
        expect("{{}}}", toBeValid: false)
        expect("{{{{{}}}}", toBeValid: false)
        expect("{}{}{}}", toBeValid: false)
        expect("{}{{{{}{}}}", toBeValid: false)
    }

    func test_mixedSymbols_areInvalid() {
        expect("(}", toBeValid: false)
        expect("{)", toBeValid: false)
        expect("{(})", toBeValid: false)
    }

    func test_mixedSymbols_areValid() {
        expect("{}()", toBeValid: true)
        expect("(){}", toBeValid: true)
        expect("{()}", toBeValid: true)
    }

    // MARK: - Helpers

    private func expect(_ string: String,
                        toBeValid expectedResult: Bool,
                        file: StaticString = #file,
                        line: UInt = #line) {
        XCTAssertEqual(string.hasValidParentheses(), expectedResult, file: file, line: line)
    }
}
