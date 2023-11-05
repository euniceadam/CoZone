//
//  Q4.swift
//  CoZone
//
//  Created by Rob, Leka on 11/5/23.
//

import Foundation
import SwiftUI

struct Q4: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("What's your")
                .font(.largeTitle)
                .padding(.horizontal)
            Text("CoZonality?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("blue"))
                .padding(.horizontal)
            Text("Answer a few questions to find out what kind of partner you are")
                .fontWeight(.light)
            Spacer()
            Text("You're more likely to remember someone's:")
                .font(.title2)
                .padding(.horizontal)
            Button (action: {}){
                Text("a. Name")
                    .padding()
                    .foregroundColor(Color.black)
                
            }
            
            Button (action: {}){
                Text("b. Face")
                    .padding()
                    .foregroundColor(Color.black)
                
            }
            Button (action: {}){
                Text("c. Hug/handshake")
                    .padding()
                    .foregroundColor(Color.black)
                
            }
            
            Spacer()
            NavigationLink(destination: Q2()){
                Text("Next")
                    .frame(width:300)
                    .padding(.vertical, 12)
                    .foregroundColor(.black)
                    .background(Color("lavenderlite"))
                    .cornerRadius(15)
                
            }
        }
        
       
    }
}
