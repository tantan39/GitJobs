//
//  CityListView.swift
//  GitJobs
//
//  Created by Tan Tan on 4/20/21.
//

import SwiftUI

struct CityListView: View {
    
    private let viewModel = CityListViewModel()
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(viewModel.cities, id: \.self) { (key) in
                    NavigationLink(
                        destination:
                            JobListsView(viewModel: JobListViewModel(city: key)),
                        label: {
                            Text(key.rawValue)
                        })
                }
                
            }
            .navigationTitle(TextManager.gitHubJobs)
        }
        
    }
}

struct CityListView_Previews: PreviewProvider {
    static var previews: some View {
        CityListView()
    }
}
