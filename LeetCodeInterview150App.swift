//
//  LeetCodeInterview150App.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/19.
//

import SwiftUI

@main
struct LeetCodeInterview150App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear(perform: {
                    let bb = ProductExceptSelf()
                    let answers = bb.productExceptSelf([1, 2, 3, 4])
                    print(answers.map({ "\($0)" }).joined(separator: ","))
                })
        }
    }
}
