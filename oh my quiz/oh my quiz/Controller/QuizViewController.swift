//
//  QuizViewController.swift
//  oh my quiz
//
//  Created by Ana Thayna Franca on 06/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    
    @IBOutlet var choice1: UIButton!
    @IBOutlet var choice2: UIButton!
    @IBOutlet var choice3: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if quizBrain.questionNumber + 1 < quizBrain.quiz.count {
            quizBrain.questionNumber += 1
        } else {
            self.performSegue(withIdentifier: "goScore", sender: self)
        }
        
        //quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToScore" {
            let destinationVC = segue.destination as! ScoreViewController
            destinationVC.score = "Score: \(quizBrain.getScore())!!!"
        }
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        
        let answerChoices = quizBrain.getAnswers()
        choice1.setTitle(answerChoices[0], for: .normal)
        choice2.setTitle(answerChoices[1], for: .normal)
        choice3.setTitle(answerChoices[2], for: .normal)
        
        progressBar.progress = quizBrain.getProgress()
        
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
    }

}
