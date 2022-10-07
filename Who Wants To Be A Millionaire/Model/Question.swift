//
//  Question.swift
//  Who Wants To Be A Millionaire
//
//  Created by Aleyna Mandacı on 28.05.2022.
//

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let rightAnswer: String
    
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
