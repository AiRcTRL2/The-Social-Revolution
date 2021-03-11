//
//  LogAutomaticThrought.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 27/02/2021.
//

import Foundation

struct LogAutomaticThought: Codable {
    var automaticThoughtDescription = ""
    var scenarioContextQuestions = [ScenarioContextQuestion]()
    var guidedDiscoveryQuestions = [GuidedDiscoveryQuestion]()
    var selectedEmotion: Emotion?
}
