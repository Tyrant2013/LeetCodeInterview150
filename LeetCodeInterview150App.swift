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
                    let checker = Reverse_Words_In_A_String_Solution()
                    checker.testCases()
                })
        }
    }
}
