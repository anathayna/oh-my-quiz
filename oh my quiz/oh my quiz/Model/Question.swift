//
//  Question.swift
//  oh my quiz
//
//  Created by Ana Thayna Franca on 07/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
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
