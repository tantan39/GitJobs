//
//  JobModel.swift
//  GitJobs
//
//  Created by Tan Tan on 4/20/21.
//

import Foundation

enum City: String {
    case boston = "Boston"
    case sanfrancisco = "San Francisco"
    case losangeles = "Los Angeles"
    case denver = "Denver"
    case boulder = "Boulder"
    case chicago = "Chicago"
    case newyork = "Newyork"
    case raleigh = "Raleigh"
    
    func shortName() -> String {
        switch self {
        case .boston:
            return "boston"
        case .sanfrancisco:
            return "sf"
        case .losangeles:
            return "los+angeles"
        case .denver:
            return "denver"
        case .boulder:
            return "bounder"
        case .chicago:
            return "chicago"
        case .newyork:
            return "new+york"
        case .raleigh:
            return "raleigh"

        }
    }
}

struct JobModel: Decodable, Identifiable, Hashable {
    var id: String
    var title: String
    var company: String
    
}

