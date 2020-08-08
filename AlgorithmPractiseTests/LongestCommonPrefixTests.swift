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
        return ""
    }
}

class LongestCommonPrefixTests: XCTestCase {

    func test_emptyList() {
        let list = [String]()
        expect(list: list, expectedResult: "")
    }

    func test_listWithOneItem() {
        let list = ["abc"]
        expect(list: list, expectedResult: "abc")
    }

    func test_listWithTwoDifferentItemsWithoutCommonPrefix() {
        let list = ["abc", "cba"]
        expect(list: list, expectedResult: "")
    }

    // MARK: - Helpers

    private func expect(list: [String], expectedResult: String) {
        let result = list.longestCommonPrefix()
        XCTAssertEqual(result, expectedResult)
    }
}
