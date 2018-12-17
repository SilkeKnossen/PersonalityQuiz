//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Silke Knossen on 13/11/2018.
//  Copyright © 2018 Silke Knossen. All rights reserved.
//

import Foundation

/*
 * Struct to define a question.
 */
struct Question {
    var question: String
    var type: ResponseType
    var answers: [Answer]
}

/*
 * Set ResponseType to be one of the following cases.
 */
enum ResponseType {
    case single, multiple, ranged
}

/*
 * Struct to define an answer.
 */
struct Answer {
    var text: String
    var animal: AnimalType
}

/*
 * Set AnimalType to be ons of the following cases.
 */
enum AnimalType: Character{
    case dog = "🐶", cat = "🐱", turtle = "🐢", rabbit = "🐰"
    
    // Create definition text for each animal type.
    var definition: String {
        switch self {
            case .dog:
                return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
            case .cat:
                return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
            case .turtle:
                return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
            case .rabbit:
                return "You love everything that's soft. You are healthy and full of energy."
        }
    }
}
