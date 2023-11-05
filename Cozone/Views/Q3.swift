//
//  Q3.swift
//  CoZone
//
//  Created by Rob, Leka on 11/5/23.
//

import Foundation
import SwiftUI

struct Q3: View {
    @State private var selectedAnswer: String?
    @State private var buttonColor: Color = Color("lavender")
    var body: some View {
        VStack(alignment: .leading) {
            Text("What's your")
                .font(.largeTitle)
                .padding(.horizontal)
            Text("CoZonality?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(buttonColor)
                .padding(.leading)
            Text("Answer a few questions to find out what kind of partner you are")
                .fontWeight(.light)
                .padding(.leading)
            Spacer(minLength: 100)
            
            Text("You find reading:")
                .font(.title2)
                .padding(.leading)
            Button (action: {self.selectedAnswer = "a"}){
                Text("a. Takes too long; you get fidgety")
                    .padding()
                    .foregroundColor(Color.black)
            }
            Button (action: {self.selectedAnswer = "b"}){
                Text("b. The best and most relaxing thing ever")
                    .padding()
                    .foregroundColor(Color.black)
            }
            Button (action: {self.selectedAnswer = "c"}){
                Text("c. Pretty boring; you'd rather be outside")
                    .padding()
                    .foregroundColor(Color.black)
            }
            Spacer()
            NavigationLink(destination: Q4()){
                Text("Next")
                    .frame(width:300)
                    .padding(.vertical, 12)
                    .foregroundColor(.white)
                    .background(selectedAnswer != nil ? buttonColor : Color("lavenderlite"))
                    .cornerRadius(15)
            }
            .padding()
            .disabled(selectedAnswer == nil) 
        }
    }
    
    struct Q3_Previews: PreviewProvider {
        static var previews: some View {
            Q3()
        }
    }
}
