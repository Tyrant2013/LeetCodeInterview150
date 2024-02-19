//
//  Question.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/19.
//

import Foundation

enum Question: Identifiable {
    var id: Self { self }
    case MergeTwoArrays
}

extension Question {
    var link: URL {
        switch self {
        case .MergeTwoArrays: return URL(string: "https://leetcode.cn/problems/merge-sorted-array/?envType=study-plan-v2&envId=top-interview-150")!
        }
    }
}

extension Question {
    var title: String {
        switch self {
        case .MergeTwoArrays: return "合并两个有序数组"
        }
    }
}
