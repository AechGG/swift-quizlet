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
    @IBOutlet weak var choiceOneButton: UIButton!
    @IBOutlet weak var choiceTwoButton: UIButton!
    @IBOutlet weak var choiceThreeButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain : QuizBrain = QuizBrain();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI();
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!;
        if quizBrain.checkAnswer(userAnswer) {
            sender.backgroundColor = UIColor.green;
        } else {
            sender.backgroundColor = UIColor.red;
        }
        
        quizBrain.nextQuestion();
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false);
    }
    
    @objc func updateUI() {
        progressBar.progress = quizBrain.getProgress();
        questionLabel.text = quizBrain.getQuestionText();
        scoreLabel.text = "Score: \(quizBrain.getScore())";
        
        choiceOneButton.backgroundColor = UIColor.clear;
        choiceTwoButton.backgroundColor = UIColor.clear;
        choiceThreeButton.backgroundColor = UIColor.clear;
        let answers = quizBrain.getAnswers();
        choiceOneButton.setTitle(answers[0], for: .normal);
        choiceTwoButton.setTitle(answers[1], for: .normal);
        choiceThreeButton.setTitle(answers[2], for: .normal);
    }
}
