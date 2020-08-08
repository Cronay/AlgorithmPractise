//
//  LongestCommonPrefixTests.swift
//  AlgorithmPractiseTests
//
//  Created by Cronay on 08.08.20.
//  Copyright © 2020 Yannic Borgfeld. All rights reserved.
//

import XCTest

extension Array where Element == String {

    /// If the list of strings is empty return a empty string otherwise return the longest common prefix of all elements.
    func longestCommonPrefix() -> String {
        if self.isEmpty {
            return ""
        }
        if self.count == 1 || areAllElementsEqual() {
            return self.first!
        }

        return findPrefixOfAllElements()
    }

    private func areAllElementsEqual() -> Bool {
        let firstItem = self[0]

        for item in self {
            if item != firstItem {
                return false
            }
        }

        return true
    }

    private func findPrefixOfAllElements() -> String {
        var currentPrefix = self[0].prefix(self[0].count)
        for item in self {
            let itemsPrefix = item.prefix(currentPrefix.count)
            if itemsPrefix != currentPrefix {
                currentPrefix = findCommonPrefix(String(itemsPrefix), String(currentPrefix))
            }
        }
        return String(currentPrefix)
    }

    private func findCommonPrefix(_ first: String, _ second: String) -> Substring {
        for i in (0...first.count).reversed() {
            if first.prefix(i) == second.prefix(i) {
                return first.prefix(i)
            }
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

    func test_listWithTwoEqualAndOneMoreItem() {
        expect(input: ["a", "a", "b"], output: "")
        expect(input: ["a", "b", "a"], output: "")
        expect(input: ["b", "a", "a"], output: "")
    }

    func test_listWithTwoItemsWithASingleLetterCommonPrefix() {
        expect(input: ["ab", "ac"], output: "a")
    }

    func test_listWithMultipleItemsWithASingleLetterCommonPrefix() {
        expect(input: ["ab", "ac", "ab", "ad", "ae"], output: "a")
    }

    func test_listWithTwoItemsAndAMultipleLettersCommonPrefix() {
        expect(input: ["aab", "aac"], output: "aa")
    }

    // MARK: - Helpers

    private func expect(input: [String], output: String, file: StaticString = #file, line: UInt = #line) {
        let result = input.longestCommonPrefix()
        XCTAssertEqual(result, output, file: file, line: line)
    }
}
