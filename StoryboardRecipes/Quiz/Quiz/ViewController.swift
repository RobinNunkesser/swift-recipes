//
//  ViewController.swift
//  Quiz
//
//  Created by Prof. Dr. Nunkesser, Robin on 15.10.18.
//  Copyright © 2018 Hochschule Hamm-Lippstadt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    var questions = [
        ("Das Videospiel Donkey Kong sollte ursprünglich Popeye als Hauptfigur haben.", true),
        ("Die Farbe Orange wurde nach der Frucht benannt.", true),
        ("In der griechischen Mythologie ist Hera die Göttin der Ernte.", false),
        ("Liechtenstein hat keinen eigenen Flughafen.", true),
        ("Die meisten Subarus werden in China hergestellt.", false)]
    
    var index = 0
    
    var correctAnswers = 0
    var falseAnswers = 0
    var skippedQuestions = 0

    // MARK: IBOutlets

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    // MARK: - Functions
    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[index].0
        self.answerLabel.alpha = 0.0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let statisticsViewController = segue.destination
            as! StatisticsViewController
        statisticsViewController.correctAnswers = correctAnswers
        statisticsViewController.falseAnswers = falseAnswers
        statisticsViewController.skippedQuestions = skippedQuestions
    }

    // MARK: IBActions
    
    @IBAction func answerTrue(_ sender: UIButton) {
        evaluateAnswer(answer: true)
        nextQuestion()
    }
 
    @IBAction func answerFalse(_ sender: UIButton) {
        evaluateAnswer(answer: false)
        nextQuestion()
    }
    
    @IBAction func skip(_ sender: UIButton) {
        nextQuestion()
        skippedQuestions += 1
    }
    
    // MARK: Other Functions
    
    func evaluateAnswer(answer: Bool) {
        var text = "Richtig!"
        if (questions[index].1 != answer) {
            text = "Falsch!"
            falseAnswers += 1
        } else {
            correctAnswers += 1
        }
        answerLabel.text = text
        UIView.animate(withDuration: 1) {
            self.answerLabel.alpha = 1.0
            self.answerLabel.alpha = 0.0
        }
    }
    
    func nextQuestion() {
        index = (index + 1) % questions.count
        questionLabel.text = questions[index].0
    }
}

