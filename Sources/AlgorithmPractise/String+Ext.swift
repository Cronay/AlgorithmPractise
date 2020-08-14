//
//  File.swift
//  
//
//  Created by Cronay on 14.08.20.
//

import Foundation

extension String {
    public func hasValidParentheses() -> Bool {
        if self.isEmpty {
            return true
        }
        if self.count == 1 {
            return false
        }
        if self.contains("()") {
            let newString = self.replacingOccurrences(of: "()", with: "")
            return newString.hasValidParentheses()
        }

        if self.contains("{}") {
            let newString = self.replacingOccurrences(of: "{}", with: "")
            return newString.hasValidParentheses()
        }
        return false
    }
}
