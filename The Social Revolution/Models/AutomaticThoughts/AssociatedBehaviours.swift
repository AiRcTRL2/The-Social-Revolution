//
//  AssociatedBehaviours.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 27/02/2021.
//

import Foundation

enum BehaviourClassification: String, Codable {
    case adaptive
    case maladaptive
}

/*
 - Associated behaviours are either adaptive or maladaptive behaviours that are responses to automatic thoughts.
 - A negative automatic thought might incur a maladaptive behaviour, i.e. a behaviour which does not result in the overall betterment of the patient. These behaviours are generally low on the Mastery & Pleasure indexes, but can provide immediate relief from symptoms of distress.
 - An adaptive behaviour is a behaviour in which provides the maximum opportunity for the patient to experience pleasure and mastery (sense of achievement).
 - Patients with anxiety or phobias tend to have more maladaptive behaviours (which may have increased the more the patient has withdrawn from previous activities).
 
 This class should record and categorise the type of behaviour, what it does for the patient, how they would score it on a mastery/pleasure index and assess whether this should be a behaviour that is increased or decreased.
 */
struct AssociatedBehaviour: Codable {
    let behaviour: String
    let masteryIndex: Double
    let pleasureIndex: Double
    
    var behaviourClassification: BehaviourClassification {
        if masteryIndex >= 3 || pleasureIndex >= 3 {
            return .adaptive
        } else {
            return .maladaptive
        }
    }
}
