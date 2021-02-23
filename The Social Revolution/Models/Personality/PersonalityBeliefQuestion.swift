//
//  PersonalityBeliefQuestion.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 15/02/2021.
//

import Foundation

struct PersonaltyBeliefsQuestionnaire: Codable {
    var data: [PersonalityBeliefQuestion]
}

struct PersonalityBeliefQuestion: Codable {
    let id: Int
    let question: String
    var answer: AnswerRating?
}
