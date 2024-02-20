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
        VStack(alignment: .leading) {
            HStack(spacing: 2) {
                Text("完成度")
                Spacer()
                Text("\(solutions.count)")
                    .foregroundStyle(.green)
                Text("/150")
                    .foregroundStyle(.black)
            }
            .font(.system(size: 18))
            
            let process = CGFloat(solutions.count) / 150
            RoundedRectangle(cornerRadius: 4)
                .frame(height: 8)
                .foregroundStyle(.gray.opacity(0.3))
                .overlay(
                    GeometryReader { proxy in
                        RoundedRectangle(cornerRadius: 4)
                            .foregroundStyle(.green)
                            .frame(width: proxy.size.width * process)
                    }
                )
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
