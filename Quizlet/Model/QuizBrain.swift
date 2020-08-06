//
//  QuizBrain.swift
//  Quizlet
//
//  Created by Harrison Gittos on 06/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        QuizItem(q: "A slug's blood is green.", a: "True"),
        QuizItem(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        QuizItem(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        QuizItem(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        QuizItem(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        QuizItem(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        QuizItem(q: "Google was originally called 'Backrub'.", a: "True"),
        QuizItem(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        QuizItem(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        QuizItem(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        QuizItem(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ];
    
    var questionNumber : Int = 0;
    
    var score : Int = 0;
    
    // Method
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true;
        }
        return false;
    }
    
    // If making a method that changes a variable inside the struct, you need to make the method mutating
    // Will not work with let quizBrain = QuizBrain() as the struct is being mutated
    mutating func nextQuestion() {
        if questionNumber != quiz.count - 1 {
            questionNumber += 1;
        } else {
            questionNumber = 0;
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question;
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
}
