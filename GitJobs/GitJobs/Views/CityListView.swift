//
//  CityListView.swift
//  GitJobs
//
//  Created by Tan Tan on 4/20/21.
//

import SwiftUI

struct CityListView: View {
    
    var cities: [City] = [.boston, .sanfrancisco, .losangeles, .denver, .boulder, .chicago, .newyork, .raleigh]
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(cities, id: \.self) { (key) in
                    NavigationLink(
                        destination:
                            JobListsView(city: key),
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
