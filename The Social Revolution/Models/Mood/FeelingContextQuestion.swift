//
//  FeelingContext.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 23/02/2021.
//

import Foundation

/// Used to parse all options
struct FeelingContextContainer: Codable {
    let data: [FeelingContextQuestion]
}

/// This class manages the emotion's category.
/// This should offer a preset number of options in which the user can define the context in a machine understandable way.
/// For example, if the user was not feeling confident, and explained the social situation as a party or gathering in which a large group of people were present, we may categorise this as an "event with multiple people". If it related to talking to a single person platonically, we may categorise this as a "friendly one-to--one". If romantic, "romantic one-to-one"
struct FeelingContextQuestion: Codable {
    let id: Int
    let question: String
    let options: [String]
    var answer: String
}


