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
        QuizItem(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        QuizItem(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        QuizItem(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        QuizItem(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        QuizItem(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        QuizItem(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        QuizItem(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        QuizItem(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        QuizItem(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        QuizItem(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ];
    
    var questionNumber : Int = 0;
    
    var score : Int = 0;
    
    // Method
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
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
            score = 0;
            questionNumber = 0;
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question;
    }
    
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers;
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return score;
    }
}
