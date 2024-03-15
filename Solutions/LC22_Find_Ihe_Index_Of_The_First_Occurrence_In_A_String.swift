//
//  LC22_Find_Ihe_Index_Of_The_First_Occurrence_In_A_String.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/3/14.
//

import Foundation

class Find_Ihe_Index_Of_The_First_Occurrence_In_A_String_Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let haystackLen = haystack.count
        let needleLen = needle.count
        var startIndex = 0
        while (haystackLen - startIndex) >= needleLen {
            let haySubStr = String(haystack.dropFirst(startIndex))
            if haySubStr.hasPrefix(needle) { return startIndex }
            startIndex += 1
        }
        return -1
    }
    
    func testCases() {
        print(strStr("sadbutsad", "sad"))
    }
    
    func strStr1(_ haystack: String, _ needle: String) -> Int {
        let n = haystack.count, m = needle.count
        if m == 0 {
            return 0
        }
        
        var pi = [Int](repeating: 0, count: m), j = 0
        for i in 1..<m {
            while j > 0 && needle[i] != needle[j] {
                j = pi[j - 1]
            }
            if needle[i] == needle[j] {
                j += 1
            }
            pi[i] = j
        }
        
        j = 0
        for i in 0..<n {
            while j > 0 && haystack[i] != needle[j] {
                j = pi[j - 1]
            }
            if haystack[i] == needle[j] {
                j += 1
            }
            if j == m {
                return i - m + 1
            }
        }
        return -1
    }
}

public extension String {
    
    subscript (i: Int) -> Character {
        get {
            let idx = String.Index(utf16Offset: i, in: self)
            return self[idx]
        }
        set {
            let idx = String.Index(utf16Offset: i, in: self)
            replaceSubrange(idx...idx, with: String(newValue))
        }
    }
}
