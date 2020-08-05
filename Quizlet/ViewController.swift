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
    var timer: Timer = Timer();
    
    var questionNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI();
    }


    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!;
        if quiz[questionNumber].checkAnswer(userAnswer: userAnswer) {
            sender.backgroundColor = UIColor.green;
        } else {
            sender.backgroundColor = UIColor.red;
        }
        
        if questionNumber != quiz.count - 1 {
            questionNumber += 1;
        } else {
            questionNumber = 0;
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateButton), userInfo: nil, repeats: true)
        
        updateUI();
    }
    
    @objc func updateButton() {
        trueButton.backgroundColor = UIColor.clear;
        falseButton.backgroundColor = UIColor.clear;
        timer.invalidate();
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber].question;
    }
}
