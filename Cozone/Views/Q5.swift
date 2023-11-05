//
//  Q5.swift
//  CoZone
//
//  Created by Rob, Leka on 11/5/23.
//

import Foundation
import SwiftUI

struct Q5: View {
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
                .foregroundColor(Color.blue)
                .padding(.leading)
            Text("Answer a few questions to find out what kind of partner you are")
                .fontWeight(.light)
                .padding(.leading)
            Spacer()
            Text("When you see the word 'cat', what do you do?:")
            Button (action: {self.selectedAnswer = "a"}){
                Text("a. Picture a cat in your mind")
                    .padding()
                    .foregroundColor(Color.black)
                
            }
            
            Button (action: {self.selectedAnswer = "b"}){
                Text("b. Sat the word 'cat' to yourself")
                    .padding()
                    .foregroundColor(Color.black)
                
            }
            Button (action: {self.selectedAnswer = "c"}){
                Text("c. Think about being with a cat (stroking it or hearing it meow)")
                    .padding()
                    .foregroundColor(Color.black)
                
            }
            
            Spacer()
            NavigationLink(destination: AAView()){
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
    
    struct Q5_Previews: PreviewProvider {
        static var previews: some View {
            Q5()
        }
    }
}
