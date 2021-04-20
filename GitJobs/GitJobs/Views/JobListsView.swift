//
//  JobListsView.swift
//  GitJobs
//
//  Created by Tan Tan on 4/20/21.
//

import SwiftUI

struct JobListsView: View {
    var city: City
    @State var jobs: [JobModel] = []
    
    var body: some View {
        
        NavigationView {
            VStack {
                List {
                    ForEach(jobs, id: \.self) { (job) in
                        Text(job.title)
                    }
                }
            }
            
            .navigationTitle(city.rawValue)


        }.onAppear(perform: {
            fetchJobs()
        })
    }
    
    func fetchJobs() {
        
        GitHubAPI.manager.fetchJobs(location: city.shortName()) { (response) in
            
            switch response {
            case .success(let data):
                if let list = data as? [JobModel] {
                    jobs = list
                }
            case .failure(let error):
                debugPrint(error.localizedDescription)
            }
        }
    }
}

struct JobListsView_Previews: PreviewProvider {
    static var previews: some View {
        JobListsView(city: .boston)
    }
}
