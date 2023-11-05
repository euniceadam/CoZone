//
//  SearchView.swift
//  Cozone
//
//  Created by Eunice Adam on 11/5/23.
//

import SwiftUI

struct SearchView: View {
    @Binding var searchText: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("gray"))
                .frame(width: 330, height: 36)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Search", text: $searchText)
                    }
                    .padding(.horizontal)
                )
        }
    }
}
