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
    let grey = Color("grey")
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
            
            Text("You remember things by:")
                .font(.custom("Outfit-Medium", size: 26))
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.top, -70.0)
                .padding()
            
            VStack {
                Button (action: {self.selectedAnswer = "a"}){
                    Text("a. Saying them out loud")
                        .padding()
                        .foregroundColor(Color.black)
                        .background(selectedAnswer == "a" ? Color("lavenderlite") : Color.clear)
                        .cornerRadius(10)
                        .frame(width:300)
                }
                
                Button (action: {self.selectedAnswer = "b"}){
                    Text("b. Watching a demonstration")
                        .padding()
                        .foregroundColor(Color.black)
                        .background(selectedAnswer == "b" ? Color("lavenderlite") : Color.clear) // Change the button color conditionally
                        .cornerRadius(10)
                        .frame(width:300)
                }
                Button (action: {self.selectedAnswer = "c"}){
                    Text("c. Experiencing it for yourself")
                        .padding()
                        .foregroundColor(Color.black)
                        .background(selectedAnswer == "c" ? Color("lavenderlite") : Color.clear) // Change the button color conditionally
                        .cornerRadius(10)
                        .frame(width:300)
                }
            }
            .padding(.top, -45.0)
                        
                        Spacer()
                        NavigationLink(destination: Q3()){
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
    
    struct Q2_Previews: PreviewProvider {
        static var previews: some View {
            Q2()
        }
    }
}
