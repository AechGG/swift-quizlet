//
//  QuizItem.swift
//  Quizlet
//
//  Created by Harrison Gittos on 05/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import Foundation

struct QuizItem {
    // Property
    let question: String
    let answers: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        question = q;
        answers = a;
        self.correctAnswer = correctAnswer;
    }
}
