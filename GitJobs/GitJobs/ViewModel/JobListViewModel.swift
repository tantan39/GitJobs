//
//  JobListViewModel.swift
//  GitJobs
//
//  Created by Tan Tan on 4/20/21.
//

import Foundation

struct JobListViewModel {
    var city: City?
    var jobs: [String] = []
    
    init(city: City?) {
        self.city = city
    }
    
//    func fetchJobs(location: String?, completion: (Result<Data, Error>) -> Void) {
//        guard let key = location else { return }
//
//
//    }
}
