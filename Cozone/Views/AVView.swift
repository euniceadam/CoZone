//
//  AVView.swift
//  CoZone
//
//  Created by Rob, Leka on 11/5/23.
//

import SwiftUI

struct AVView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("It's a match.")
                .font(.largeTitle)
                .padding(.horizontal)
            Text("Here is your")
                .font(.largeTitle)
                .padding(.horizontal)
            Text("CoZonScope!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("blue"))
                .padding(.horizontal)
            Spacer()
        HStack {
            Image("Auditory")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .frame(maxWidth: .infinity, alignment: .center)
            Image("Visual")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .frame(maxWidth: .infinity, alignment: .center)
        }

            Spacer()
            Text("Auditory and Visual")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .center)
            Spacer()
            Text("Visual and auditory learners can blend multimedia, visual notes, audio flashcards, peer teaching, discussions with visual cues, mind maps, technology, active listening, debates, and respect for individual preferences to enhance collaboration.")
                .multilineTextAlignment(.center)
                .padding()
                .frame(width: 300.0, height: 400.0)
                .background(Color("lavenderlite"))
                .frame(maxWidth: .infinity, alignment: .center)
                .cornerRadius(10)
            ZStack {
                           RoundedRectangle(cornerRadius: 10)
                               .fill(Color("lightgray"))
                               .frame(width: 300, height: 50)
                               .overlay(alignment: .center) {
                                   HStack {
                                       Button(action: {}) {
                                           Image("bookmark")
                                               .resizable()
                                               .frame(width: 30, height: 30)
                                       }

                                       Button(action: {}) {
                                           Image("home")
                                               .resizable()
                                               .frame(width: 35, height: 35)
                                       }
                                       .padding(.horizontal, 45)

                                       Button(action: {}) {
                                           Image("message")
                                               .resizable()
                                               .frame(width: 30, height: 30)
                                       }
                                   }
                               }
                       }
                       .frame(maxWidth: .infinity, alignment: .center)
                   }
               }
                
        }
    
    
            struct AVView_Previews: PreviewProvider {
                static var previews: some View {
                    AVView()
                }
            }
        
    
