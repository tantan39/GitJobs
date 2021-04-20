//
//  JobListsView.swift
//  GitJobs
//
//  Created by Tan Tan on 4/20/21.
//

import SwiftUI

struct JobListsView: View {
    var viewModel: JobListViewModel
    
    var body: some View {
        NavigationView {
            List {
                
            }
            .navigationTitle(viewModel.city?.rawValue ?? "")
        }
    }
}

struct JobListsView_Previews: PreviewProvider {
    static var previews: some View {
        JobListsView(viewModel: JobListViewModel(city: .boston))
    }
}
