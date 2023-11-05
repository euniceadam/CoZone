//
//  Avatars.swift
//  Cozone
//
//  Created by Eunice Adam on 11/5/23.
//

import SwiftUI

struct Avatars: View {
    let avatarImages = ["avatar1", "avatar2", "avatar3", "avatar4"]
    
    @State private var selectedAvatar: String?
    let purple = Color("purple")
    let lavender = Color("lavender")


    var body: some View {
        VStack {
            Text("Choose your avatar.")
                .font(.custom("Outfit-Regular", size: 45))
                .frame(maxWidth: 350, alignment: .leading)
            
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 16), GridItem(.flexible())], spacing: 16) {
                ForEach(avatarImages, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 200)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(selectedAvatar == imageName ? purple : Color.clear, lineWidth: 3)
                                
                        )
                        .onTapGesture {
                            selectedAvatar = imageName
                        }
                        .zIndex(1) // Set the zIndex to ensure the image is on top
                }
            }
            
            Spacer()

            if selectedAvatar != nil {
                NavigationLink(destination: Q2()) {
                    Text("Take the Cozonality Quiz")
                        .font(.headline)
                        .padding()
                        .background(lavender)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
    }
}

struct CozonalityQuizView: View {
    @Binding var selectedAvatar: String?

    var body: some View {
        Text("Cozonality Quiz goes here")
            .font(.largeTitle)
            .navigationBarTitle("Cozonality Quiz")
            .onAppear {
                print("Selected Avatar: \(selectedAvatar ?? "None")")
            }
    }
}

struct Avatars_Previews: PreviewProvider {
    static var previews: some View {
        Avatars()
    }
}

