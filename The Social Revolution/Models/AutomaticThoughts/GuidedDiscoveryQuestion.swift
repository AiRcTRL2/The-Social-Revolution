//
//  GuidedDiscoveryQuestion.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 27/02/2021.
//

import Foundation

enum GuidedDiscoveryQuestionCategoryEnum: String, Codable {
    case reflective
    case strategy
}

struct GuidedDiscoveryQuestionsContainer: Codable {
    var data: [GuidedDiscoveryQuestion]
}

struct GuidedDiscoveryQuestion: Codable {
    let id: Int
    let question: String
    let questionCategory: GuidedDiscoveryQuestionCategoryEnum
    let responseRequired: Bool
    private var answers: [String?]
    
    /// Fetches non-empty answers
    /// - Returns: A list of non-empty strings
    func getAnswers() -> [String] {
        return answers.filter{ $0?.isEmpty == false }.compactMap( { $0 } )
    }
    
    /// Adds a non-empty string to the list of answers
    /// - Parameter string: A non-empty string
    /// - Returns: Success case (false if adding to answers fails)
    mutating func appendAnswerWithSuccess(string: String) -> Bool {
        guard string.isEmpty == false else {
            print("did not add answer, answer was empty")
            return false
        }
        
        answers.append(string)
        return true
    }
}
