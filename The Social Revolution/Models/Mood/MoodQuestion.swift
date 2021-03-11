//
//  MoodQuestion.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 23/02/2021.
//

import Foundation

/// Mood Questions are questions that are designed to investigate how the user is feeling right now, i.e. what kind of impact their thoughts are having on their emotions &/ physiology
/// Mood checks are an important part of assessing current issues that clients may be dealing with. They also provide insights into what kind of challenges the user faces, the frequency of those category of challenges, how those challenges affect their mood &/ physiology and provide the mechanism to probe those issues directly or save them for a time when the user is able to address them.
/// Probing challenges should be handled by another class which should utilise this class as it's start point.
/// This struct is responsible for managing a user's input regarding their mood and recording whether this should be probed immediately or saved for addressing later. It should have a list of questions which aim to identify the user's mood and categorise it for better understanding by the code base (random, uncategorised user input would be hard to decipher and respond to programmatically).
struct MoodCheck {
    let question: String
    let feelings: Emotion?
}
