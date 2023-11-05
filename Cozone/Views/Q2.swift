//
//  Q2.swift
//  CoZone
//
//  Created by Rob, Leka on 11/5/23.
//

//import Foundation
import SwiftUI

struct Q2: View {
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
            Text("You remember things by:")
                .font(.title2)
                .padding(.horizontal)
            Button (action: {self.selectedAnswer = "a"}){
                Text("a. Saying them out loud")
                    .padding()
                    .foregroundColor(Color.black)
                    .background(selectedAnswer == "a" ? Color("lavenderlite") : Color.gray) // Change the button color conditionally
                    .cornerRadius(10)
            }
            
            Button (action: {self.selectedAnswer = "b"}){
                Text("b. Watching a demonstration")
                    .padding()
                    .foregroundColor(Color.black)
                    .background(selectedAnswer == "b" ? Color("lavenderlite") : Color.gray) // Change the button color conditionally
                    .cornerRadius(10)
            }
            Button (action: {self.selectedAnswer = "c"}){
                Text("c. Experiencing it for yourself")
                    .padding()
                    .foregroundColor(Color.black)
                    .background(selectedAnswer == "c" ? Color("lavenderlite") : Color.gray) // Change the button color conditionally
                    .cornerRadius(10)
            }
            
            Spacer()
            NavigationLink(destination: Q3()){
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
    
    struct Q2_Previews: PreviewProvider {
        static var previews: some View {
            Q2()
        }
    }
}
