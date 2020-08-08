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
        return self.first!
    }
}

class LongestCommonPrefixTests: XCTestCase {

    func test_emptyList() {
        let list = [String]()

        let result = list.longestCommonPrefix()

        XCTAssertEqual(result, "")
    }

    func test_listWithOneItem() {
        let list = ["abc"]

        let result = list.longestCommonPrefix()

        XCTAssertEqual(result, "abc")
    }

}
