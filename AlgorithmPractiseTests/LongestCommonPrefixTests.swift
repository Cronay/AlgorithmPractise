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
        let list = [String]()
        expect(list: list, expectedResult: "")
    }

    func test_listWithOneItemWithOneLetter() {
        let list = ["a"]
        expect(list: list, expectedResult: "a")
    }

    func test_listWithOneItemWithMoreThanOneLetter() {
        let list = ["abc"]
        expect(list: list, expectedResult: "abc")
    }

    func test_listWithTwoDifferentItemsWithoutCommonPrefix() {
        let list = ["a", "c"]
        expect(list: list, expectedResult: "")
    }

    func test_listWithTwoEqualItemsWithOneLetter() {
        let list = ["a", "a"]
        expect(list: list, expectedResult: "a")
    }

    func test_listWithTwoEqualItemsWithMoreThanOneLetter() {
        let list = ["abc", "abc"]
        expect(list: list, expectedResult: "abc")
    }

    // MARK: - Helpers

    private func expect(list: [String], expectedResult: String, file: StaticString = #file, line: UInt = #line) {
        let result = list.longestCommonPrefix()
        XCTAssertEqual(result, expectedResult, file: file, line: line)
    }
}
