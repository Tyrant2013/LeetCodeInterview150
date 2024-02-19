//
//  ContentView.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/19.
//

import SwiftUI

struct ContentView: View {
    let solutions: [Question] = Question.allCases
    var body: some View {
        VStack {
            List {
                ForEach(solutions) { solution in
                    Link(destination: solution.link) { Text(solution.title) }
                }
            }
        }
        .padding()
    }
}

struct SolutionLink: View {
    var question: Question
    var body: some View {
        Link(destination: question.link) { Text(question.title) }
    }
}

#Preview {
    ContentView()
}
