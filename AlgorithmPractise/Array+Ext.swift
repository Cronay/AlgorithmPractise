//
//  Array+Ext.swift
//  AlgorithmPractise
//
//  Created by Cronay on 08.08.20.
//  Copyright © 2020 Yannic Borgfeld. All rights reserved.
//

extension Array where Element == String {

    /// If the list of strings is empty return a empty string otherwise return the longest common prefix of all elements.
    public func longestCommonPrefix() -> String {
        if self.isEmpty { return "" }
        if self.count == 1 { return self[0] }

        let sorted = self.sorted()
        let first = sorted[0]
        let last = sorted[sorted.count - 1]

        return findCommonPrefix(first, last)
    }

    private func findCommonPrefix(_ first: String, _ second: String) -> String {
        for i in (0...first.count).reversed() {
            if first.prefix(i) == second.prefix(i) {
                return String(first.prefix(i))
            }
        }
        return ""
    }
}
