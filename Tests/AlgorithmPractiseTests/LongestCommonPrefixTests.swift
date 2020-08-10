//
//  LongestCommonPrefixTests.swift
//  Created by Cronay on 10.08.20.
//

import XCTest
import AlgorithmPractise

class LongestCommonPrefixTests: XCTestCase {

    func test_emptyList() {
        expect(input: [], output: "")
    }

    func test_listWithEmptyString() {
        expect(input: [""], output: "")
    }

    func test_listWithOneItemWithOneLetter() {
        expect(input: ["a"], output: "a")
    }

    func test_listWithOneItemWithMoreThanOneLetter() {
        expect(input: ["abc"], output: "abc")
    }

    func test_listWithEmptyStringAndNonEmptyString() {
        expect(input: ["", "a"], output: "")
        expect(input: ["a", ""], output: "")
        expect(input: ["a", "", "a"], output: "")
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

    func test_listWithMoreThanTwoItemsAndAMultipleLettersCommonPrefix() {
        expect(input: ["aaa", "aac", "aab", "aac", "aab"], output: "aa")
        expect(input: ["artuuus", "artuuus", "artuuus", "aituuus"], output: "a")
        expect(input: ["abcd", "abcde", "abcdefg"], output: "abcd")
        expect(input: ["abz", "aba", "abn"], output: "ab")
        expect(input: ["abzgsdtsfd", "abaaa", "abnwttt", "abttww"], output: "ab")
    }

    // MARK: - Helpers
    private func expect(input: [String], output: String, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(input.longestCommonPrefix(), output, file: file, line: line)
    }
}
