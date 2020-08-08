//
//  LongestCommonPrefixTests.swift
//  AlgorithmPractiseTests
//
//  Created by Cronay on 08.08.20.
//  Copyright © 2020 Yannic Borgfeld. All rights reserved.
//

import XCTest

extension Array where Element == String {

    /// If the list of strings is empty return a empty string.
    func longestCommonPrefix() -> String {
        if self.isEmpty {
            return ""
        }
        if self.count == 1 {
            return self.first!
        }
        if self[0] == self[1] {
            return self[0]
        }
        return ""
    }
}

class LongestCommonPrefixTests: XCTestCase {

    func test_emptyList() {
        expect(input: [], output: "")
    }

    func test_listWithOneItemWithOneLetter() {
        expect(input: ["a"], output: "a")
    }

    func test_listWithOneItemWithMoreThanOneLetter() {
        expect(input: ["abc"], output: "abc")
    }

    func test_listWithTwoDifferentItemsWithoutCommonPrefix() {
        expect(input: ["a", "c"], output: "")
    }

    func test_listWithTwoEqualItemsWithOneLetter() {
        expect(input: ["a", "a"], output: "a")
    }

    func test_listWithTwoEqualItemsWithMoreThanOneLetter() {
        expect(input: ["abc", "abc"], output: "abc")
    }

    // MARK: - Helpers

    private func expect(input: [String], output: String, file: StaticString = #file, line: UInt = #line) {
        let result = input.longestCommonPrefix()
        XCTAssertEqual(result, output, file: file, line: line)
    }
}
