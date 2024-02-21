//
//  Question.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/19.
//

import Foundation

enum Question: Identifiable, CaseIterable {
    var id: Self { self }
    case MergeTwoArrays
    case RemoveElement
    case RemoveDuplicates
    case RemoveDuplicates2
    case MagorityElement
    case Rotate
}

extension URL {
    static func urlWithQuestion(question: Question) -> URL {
        let prefixScheme = "https://leetcode.cn/problems/"
        let last = "/?envType=study-plan-v2&envId=top-interview-150"
        let url = String(format: "%@%@%@", prefixScheme, question.name, last)
        return URL(string: url)!
    }
}

extension Question {
    var name: String {
        switch self {
        case .MergeTwoArrays: return "merge-sorted-array"
        case .RemoveElement: return "remove-element"
        case .RemoveDuplicates: return "remove-duplicates-from-sorted-array"
        case .RemoveDuplicates2: return "remove-duplicates-from-sorted-array-ii"
        case .MagorityElement: return "majority-element"
        case .Rotate: return "rotate-array"
        }
    }
    var link: URL { .urlWithQuestion(question: self) }
}

extension Question {
    var title: String {
        switch self {
        case .MergeTwoArrays: return "合并两个有序数组"
        case .RemoveElement: return "移除元素"
        case .RemoveDuplicates: return "删除有序数组中的重复项"
        case .RemoveDuplicates2: return "删除有序数组中的重复项2"
        case .MagorityElement: return "多数元素"
        case .Rotate: return "轮转数组"
        }
    }
}
