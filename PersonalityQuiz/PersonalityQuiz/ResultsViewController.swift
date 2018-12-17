//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Silke Knossen on 13/11/2018.
//  Copyright © 2018 Silke Knossen. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    // Initliaze array for chosen answers.
    var responses: [Answer]!
    
    // Create all outlets.
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    // When the view did load, calculate result for the quiz.
    override func viewDidLoad() {
        navigationItem.hidesBackButton = true
        super.viewDidLoad()
        calculatePersonalityResult()
    }
    
    /* Determine the animals that corresponds to the chosen answers.
     * The animal that occurres the most, is the result.
     * Set the labels in the view with a result text.
     */
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map { $0.animal }
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by:
        { (pair1, pair2) -> Bool in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 >
        $1.1 }.first!.key
        
        resultAnswerLabel.text = "You are a  \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }

}
