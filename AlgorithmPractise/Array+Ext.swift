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
        guard !self.isEmpty else { return "" }
        guard !(self.count == 1) else { return self[0] }

        return findCommonPrefixForAllElements()
    }

    private func findCommonPrefixForAllElements() -> String {
        var currentPrefix = self[0].prefix(self[0].count)
        for item in self {
            let itemsPrefix = item.prefix(currentPrefix.count)
            if itemsPrefix != currentPrefix {
                currentPrefix = findCommonPrefix(String(itemsPrefix), String(currentPrefix))
            }
            if currentPrefix.isEmpty {
                return String(currentPrefix)
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
