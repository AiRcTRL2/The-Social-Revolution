//
//  Feeling.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 23/02/2021.
//

import Foundation

/// Used to parse all previous user logs of their feelings to enable searching
struct FeelingsContainer: Codable {
    var data: [Feeling]
}

/// The feeling struct should record instances of user emotion, whether the emotion is positive or negative and an emotion definition within the context of social anxiety. Feelings can also have an optional tidbit/fact about their prevalence, frequency experienced by others or how others improve their emotion when feeling this. If positive, feelings can be referenced at a future point in time when the feeling is the opposite of what we felt. The feeling could provide a reminder of what the scenario was when we felt this emotion.
struct Feeling: Codable {
    /// The emotion the user is currently feeling
    var emotion: Emotion?
    /// Emotion category - > This should be a preset number of options in which the user can define the context in a machine understandable way. For example, if the user was not feeling confident, and explained the social situation as a party or gathering in which a large group of people were present, we may categorise this as an "event with multiple people". If it related to talking to a single person platonically, we may categorise this as a "friendly one-to--one". If romantic, "romantic one-to-one"
    var feelingContext: [FeelingContextQuestion]?
    
}
