//
//  ATView.swift
//  CoZone
//
//  Created by Rob, Leka on 11/5/23.
//

import SwiftUI

struct ATView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("It's a match.")
                .font(.largeTitle)
                .padding([.top, .leading, .trailing])
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
            Image("Tactile")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .frame(maxWidth: .infinity, alignment: .center)
        }

            Spacer()
            Text("Auditory and Tactile")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .center)
            Spacer()
            Text("Tactile and auditory learners benefit from collaboration, utilizing active discussions, group sessions, teaching, visual aids, technology, mind maps, role-playing, feedback, and respecting preferences to enhance comprehension and retention, accommodating diverse learning styles.")
                .multilineTextAlignment(.center)
                .padding()
                .frame(width: 300.0, height: 300.0)
                .background(Color("lavenderlite"))
                .cornerRadius(32)
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
    
    struct ATView_Previews: PreviewProvider {
        static var previews: some View {
            ATView()
        }
    }

