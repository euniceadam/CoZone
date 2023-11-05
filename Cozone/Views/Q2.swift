//
//  Q2.swift
//  CoZone
//
//  Created by Rob, Leka on 11/5/23.
//

//import Foundation
import SwiftUI

struct Q2: View {
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
                .padding(.horizontal)
            Spacer()
            Text("You remember things by:")
                .font(.title2)
                .padding(.horizontal)
            Button (action: {}){
                Text("a. Saying them out loud")
                    .padding()
                    .foregroundColor(Color.black)
                
            }
            
            Button (action: {}){
                Text("b. Watching a demonstration")
                    .padding()
                    .foregroundColor(Color.black)
                
            }
            Button (action: {}){
                Text("c. Experiencing it for yourself")
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
    
    struct Q2_Previews: PreviewProvider {
        static var previews: some View {
            Q2()
        }
    }
}
