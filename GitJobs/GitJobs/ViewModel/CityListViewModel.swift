//
//  CityListViewModel.swift
//  GitJobs
//
//  Created by Tan Tan on 4/20/21.
//

import Foundation

struct CityListViewModel {
    
    var cities: [City] = [.boston, .sanfrancisco, .losangeles, .denver, .boulder, .chicago, .newyork, .raleigh]
    
    var selectedCity: City?
    
}
