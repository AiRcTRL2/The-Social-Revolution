//
//  LogAutomaticThrought.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 27/02/2021.
//

import Foundation

struct LogAutomaticThought: Codable {
    var id = UUID().uuidString
    var automaticThoughtDescription = ""
    var selectedEmotion: Emotion?

    var scenarioContextQuestions: ScenarioContextQuestionsContainer?
    var guidedDiscoveryQuestions: GuidedDiscoveryQuestionsContainer?
    var associatedBehaviours: [AssociatedBehaviour]?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        automaticThoughtDescription = try container.decode(String.self, forKey: .automaticThoughtDescription)
        selectedEmotion = try container.decodeIfPresent(Emotion.self, forKey: .selectedEmotion)
        scenarioContextQuestions = try container.decodeIfPresent(ScenarioContextQuestionsContainer.self, forKey: .scenarioContextQuestions)
        guidedDiscoveryQuestions = try container.decodeIfPresent(GuidedDiscoveryQuestionsContainer.self, forKey: .guidedDiscoveryQuestions)
        associatedBehaviours = try container.decodeIfPresent([AssociatedBehaviour].self, forKey: .associatedBehaviours)
    }
    
    init() {
        scenarioContextQuestions = ReadLocalFileHelper.readJsonFile(with: "ScenarioContextQuestions")
        guidedDiscoveryQuestions = ReadLocalFileHelper.readJsonFile(with: "GuidedDiscoveryQuestions")
    }
}
