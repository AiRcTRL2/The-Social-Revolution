//
//  RatingEnum.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 15/02/2021.
//

import Foundation

enum AnswerRating: Int, Codable {
    case noBeliefAtAll = 0, slightlyBelieve, moderatelyBelief, veryMuchBelieve, totallyBelieve
    
    var textualRepresentation: String {
        switch self.rawValue {
        case 0:
            return "I don't believe it at all"
        case 1:
            return "I believe it slightly"
        case 2:
            return "I believe it moderately"
        case 3:
            return "I believe it very much"
        case 4:
            return "I believe it totally"
        default:
            return "Other"
        }
    }
}
