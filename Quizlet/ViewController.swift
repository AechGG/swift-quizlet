//
//  ViewController.swift
//  Quizlet
//
//  Created by Harrison Gittos on 05/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        QuizItem(question: "Four + Two is equal to Six", answer: "True"),
        QuizItem(question: "Five - Three is greater than One", answer: "True"),
        QuizItem(question: "Three + Eight is less than Ten", answer: "False")
    ];
    
    var questionNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI();
    }


    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!;
        if quiz[questionNumber].checkAnswer(userAnswer: userAnswer) {
            print("Correct");
        } else {
            print("Wrong");
        }
        if questionNumber != quiz.count - 1 {
            questionNumber += 1;
        } else {
            questionNumber = 0;
        }
        updateUI();
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber].question;
    }
}
