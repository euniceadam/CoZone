//
//  ProfileListView.swift
//  Cozone
//
//  Created by Eunice Adam on 11/5/23.
//

import SwiftUI

struct ProfileView: View {
    var name: String
    var description: String
    var imageName: String

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit) 
                    .padding(.bottom, 5)

                Text(name)
                    .font(.title)
                    .fontWeight(.semibold)

                Text(description)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct ProfileListView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [GridItem(.flexible())]) {
                ForEach(profiles, id: \.name) { profile in
                    ProfileView(name: profile.name, description: profile.description, imageName: profile.imageName)
                        .frame(width: 300, height: 500)
                        .padding(.bottom, 7)
                }
            }
        }
    }
}

struct Profile {
    var name: String
    var description: String
    var imageName: String
}

let profiles = [
    Profile(name: "John Doe", description: "Tactile Learner", imageName: "John"),
    Profile(name: "Amina Dauw", description: "Auditory Learner", imageName: "Amina"),
    Profile(name: "Jane Smith", description: "Visual Learner", imageName: "Jane"),
]

struct ProfileListView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileListView()
    }
}

