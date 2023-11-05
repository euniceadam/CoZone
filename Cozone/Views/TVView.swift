//
//  TVView.swift
//  CoZone
//
//  Created by Rob, Leka on 11/5/23.
//

import SwiftUI

struct TVView: View {
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
            Image("Tactile")
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
            Text("Visual and Tactile")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .center)
            Spacer()
            Text("Tactile and visual learners collaborate effectively by combining their different learning preferences. They use tactile materials, visual aids, tactile study aids, teach through demonstrations and illustrations, have group study sessions, employ interactive technology, work with visual representations, manipulate objects, respect individual preferences, and offer feedback.")
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
    struct TVView_Previews: PreviewProvider {
        static var previews: some View {
            TVView()
        }
    
}
