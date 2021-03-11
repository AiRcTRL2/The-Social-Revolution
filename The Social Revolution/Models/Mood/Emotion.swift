//
//  Emotion.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 23/02/2021.
//

import Foundation

/// Used to parse all options
struct EmotionsContainer: Codable {
    var data: [Emotion]
}

struct Emotion: Codable {
    let id: Int
    /// The space for which the user should provide the context for their emotion (a description of the events/thoughts that led to this emootion)
    var name: String
    /// Determines whether this emotion is positive or negative
    let positiveOrNegative: String
    /// The user's description of their current feelings
    var userDescription: String
    /// Provides an emotion description for the user
    let emotionDefinition: String?
    /// Provides supportive information about this emotion to the user (normalising, others' experiences)
    let emotionFact: String?
    /// Provides information on how we move out of this emotion (or maintain if positive)
    let emotionStrategy: String?
}
