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
                .font(.custom("Outfit-Regular", size: 40))
                .padding(.horizontal)
            
            Text("CoZonality?")
                .font(.custom("Outfit-SemiBold", size: 40))
                .foregroundColor(buttonColor)
                .padding(.leading)
                .frame(maxWidth: 350, alignment: .leading)
            
            Text("Answer a few questions to find out what kind of partner you are")
                .font(.custom("Montserrat-Light", size: 16))
                .frame(maxWidth: 350, alignment: .leading)
                .padding()
            
            Spacer(minLength: 50)
            
            Text("You're more likely to remember someone's:")
                .font(.custom("Outfit-Medium", size: 26))
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.top, -70.0)
                .padding()
            
            Button (action: {self.selectedAnswer = "a"}){
                Text("a. Name")
                    .padding()
                    .foregroundColor(Color.black)
                    .background(selectedAnswer == "a" ? Color("lavenderlite") : Color.clear)
                    .cornerRadius(10)
                    .frame(width:300)
                
            }
            
            Button (action: {self.selectedAnswer = "b"}){
                Text("b. Face")
                    .padding()
                    .foregroundColor(Color.black)
                    .background(selectedAnswer == "b" ? Color("lavenderlite") : Color.clear) // Change the button color conditionally
                    .cornerRadius(10)
                    .frame(width:300)
            }
            
            Button (action: {self.selectedAnswer = "c"}){
                Text("c. Hug/handshake")
                    .padding()
                    .foregroundColor(Color.black)
                    .background(selectedAnswer == "c" ? Color("lavenderlite") : Color.clear) // Change the button color conditionally
                    .cornerRadius(10)
                    .frame(width:300)
                
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
            .padding(.leading, 40.0)
            .disabled(selectedAnswer == nil) 
        }
        
       
    }
}
