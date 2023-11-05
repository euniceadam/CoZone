//
//  ContentView.swift
//  CoZoneApp
//
//  Created by Seck, Fagaye on 11/4/23.
//

import SwiftUI

struct BrowsePartnersView: View {
    @State private var searchText = ""
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.dismiss) var dismiss

    var body: some View {

        VStack {
            Text("CoZone!")
                .font(.custom("Outfit-Regular", size: 48))
                .foregroundColor(Color.blue)
                .padding(.bottom, 20.0)

            SearchView(searchText: $searchText)
            
            NavigationView {
                           ProfileListView()
                               .navigationTitle("CSC 161")
                       }

            Spacer()

            NavigationView {
                // Add your navigation content here
            }
        }
    }
}


struct BrowsePartnersView_Previews: PreviewProvider {
    static var previews: some View {
        BrowsePartnersView()
    }
}
