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
        let gray = Color("gray")

        VStack {
            Text("CoZone!")
                .font(.custom("Outfit-Semibold", size: 48))
                .padding(.top, 10.0)
            
            SearchView(searchText: $searchText)
            
            NavigationView {
                ProfileListView()
            }
            .navigationTitle("CSC 161")
            .navigationBarTitleDisplayMode(.inline) 
            
            
            RoundedRectangle(cornerRadius: 10)
                .fill(gray)
                .frame(width: 300, height: 50)
                .overlay(alignment: .center) {
                    HStack {
                        Button(action: {}) { // home page button
                            Image("bookmark")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        
                        Button(action: {}) { // button
                            Image("home")
                                .resizable()
                                .frame(width: 35, height: 35)
                        } .padding(.horizontal, 45)
                        
                        Button(action: {}) { // button
                            Image("message")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                    }
                }
        }
    }
}

struct BrowsePartnersView_Previews: PreviewProvider {
    static var previews: some View {
        BrowsePartnersView()
    }
}
