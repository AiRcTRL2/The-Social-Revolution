//
//  FeelingContext.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 23/02/2021.
//

import Foundation

/// Used to parse all options
struct ScenarioContextQuestionsContainer: Codable {
    let data: [ScenarioContextQuestion]
}

/// This class manages the emotion's category.
/// This should offer a preset number of options in which the user can define the context in a machine understandable way.
/// For example, if the user was not feeling confident, and explained the social situation as a party or gathering in which a large group of people were present, we may categorise this as an "event with multiple people". If it related to talking to a single person platonically, we may categorise this as a "friendly one-to--one". If romantic, "romantic one-to-one"
struct ScenarioContextQuestion: Codable {
    let id: Int
    let question: String
    let responseRequired: Bool
    let options: [String]
    var answers: [String?]
    
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


