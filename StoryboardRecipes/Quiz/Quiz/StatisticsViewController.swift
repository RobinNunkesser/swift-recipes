//
//  StatisticsViewController.swift
//  Quiz
//
//  Created by Prof. Dr. Nunkesser, Robin on 17.10.18.
//  Copyright © 2018 Hochschule Hamm-Lippstadt. All rights reserved.
//

import UIKit

class StatisticsViewController : UIViewController {
    
    // MARK: - Properties

    var correctAnswers: Int!
    var falseAnswers: Int!
    var skippedQuestions: Int!
    var answeredQuestions: Int {
        return correctAnswers + falseAnswers + skippedQuestions
    }

    // MARK: IBOutlets
    
    @IBOutlet weak var questionsLabel: UILabel!
    @IBOutlet weak var correctQuestionsLabel: UILabel!
    @IBOutlet weak var wrongQuestionsLabel: UILabel!
    @IBOutlet weak var skippedQuestionsLabel: UILabel!

    // MARK: - Functions
    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionsLabel.text = "\(answeredQuestions)"
        correctQuestionsLabel.text = "\(correctAnswers!)"
        wrongQuestionsLabel.text = "\(falseAnswers!)"
        skippedQuestionsLabel.text = "\(skippedQuestions!)"
    }

}
