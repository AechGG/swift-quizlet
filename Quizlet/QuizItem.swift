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
    let answer: String
    
    // Method
    func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == answer {
            return true;
        }
        return false;
    }
}
