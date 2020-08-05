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
    
    let quiz = ["Four + Two is equal to Six", "Five - Three is greater than One", "Three + Eight is less than Ten"];
    
    var questionNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI();
    }


    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if questionNumber != quiz.count - 1 {
            questionNumber += 1;
        }
        updateUI();
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber];
    }
}

