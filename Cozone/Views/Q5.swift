//
//  Q5.swift
//  CoZone
//
//  Created by Rob, Leka on 11/5/23.
//

import Foundation
import SwiftUI

struct Q5: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("What's your")
                .font(.largeTitle)
                .padding(.horizontal)
            Text("CoZonality?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
            Text("Answer a few questions to find out what kind of partner you are")
                .fontWeight(.light)
            Spacer()
            Text("When you see the word 'cat', what do you do?:")
            Button (action: {}){
                Text("a. Picture a cat in your mind")
                    .padding()
                    .foregroundColor(Color.black)
                
            }
            
            Button (action: {}){
                Text("b. Sat the word 'cat' to yourself")
                    .padding()
                    .foregroundColor(Color.black)
                
            }
            Button (action: {}){
                Text("Think about being with a cat (stroking it or hearing it meow)")
                    .padding()
                    .foregroundColor(Color.black)
                
            }
            
            Spacer()
            NavigationLink(destination: Q3()){
                Text("Next")
                    .frame(width:300)
                    .padding(.vertical, 12)
                    .foregroundColor(.black)
                    .background(Color("lavenderlite"))
                    .cornerRadius(15)
            }
            .padding()
            
        }
    }
    
    struct Q5_Previews: PreviewProvider {
        static var previews: some View {
            Q5()
        }
    }
}
