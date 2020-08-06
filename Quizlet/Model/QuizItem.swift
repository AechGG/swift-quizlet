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
    
    init(q: String, a: String) {
        question = q;
        answer = a;
    }
}
