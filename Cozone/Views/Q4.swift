//
//  Q4.swift
//  CoZone
//
//  Created by Rob, Leka on 11/5/23.
//

import Foundation
import SwiftUI

struct Q4: View {
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
            
            Text("You're more likely to remember someone's:")
                .font(.title2)
                .padding(.horizontal)
            Button (action: {self.selectedAnswer = "a"}){
                Text("a. Name")
                    .padding()
                    .foregroundColor(Color.black)
                
            }
            
            Button (action: {self.selectedAnswer = "b"}){
                Text("b. Face")
                    .padding()
                    .foregroundColor(Color.black)
                
            }
            Button (action: {self.selectedAnswer = "c"}){
                Text("c. Hug/handshake")
                    .padding()
                    .foregroundColor(Color.black)
                
            }
            
            Spacer()
            NavigationLink(destination: Q5()){
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
}
