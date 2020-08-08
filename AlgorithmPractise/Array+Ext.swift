//
//  Array+Ext.swift
//  AlgorithmPractise
//
//  Created by Cronay on 08.08.20.
//  Copyright © 2020 Yannic Borgfeld. All rights reserved.
//

extension Array where Element == String {

    /// If the list of strings is empty return a empty string otherwise return the longest common prefix of all elements.
    func longestCommonPrefix() -> String {
        if self.isEmpty {
            return ""
        }
        if self.count == 1 {
            return self.first!
        }

        return findCommonPrefixForAllElements()
    }

    private func findCommonPrefixForAllElements() -> String {
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
