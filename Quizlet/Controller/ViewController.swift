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
        
        trueButton.backgroundColor = UIColor.clear;
        falseButton.backgroundColor = UIColor.clear;
    }
}
