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
    case MaxProfit
    case MaxProfit2
    case JumpGame
    case JumpGame2
    case hIndex
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
        case .MaxProfit: return "best-time-to-buy-and-sell-stock"
        case .MaxProfit2: return "best-time-to-buy-and-sell-stock-ii"
        case .JumpGame: return "jump-game"
        case .JumpGame2: return "jump-game-ii"
        case .hIndex: return "h-index"
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
        case .MaxProfit: return "买卖股票的最佳时机"
        case .MaxProfit2: return "买卖股票的最佳时机 II"
        case .JumpGame: return "跳跃游戏"
        case .JumpGame2: return "跳跃游戏"
        case .hIndex: return "H 指数"
        }
    }
}

extension URL {
    static func urlWithQuestion(question: Question) -> URL {
        let prefixScheme = "https://leetcode.cn/problems/"
        let last = "/?envType=study-plan-v2&envId=top-interview-150"
        let url = String(format: "%@%@%@", prefixScheme, question.name, last)
        return URL(string: url)!
    }
}
