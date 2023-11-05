//
//  Q3.swift
//  CoZone
//
//  Created by Rob, Leka on 11/5/23.
//

import Foundation
import SwiftUI

struct Q3: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("What's your")
                .font(.largeTitle)
                .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
            Text("CoZonality?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("blue"))
                .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                
            Text("Answer a few questions to find out what kind of partner you are")
                .fontWeight(.light)
                .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
            Spacer()
            Text("You find reading:")
                .font(.title2)
            Button (action: {}){
                Text("a. Takes too long; you get fidgety")
                    .padding()
                    .background(Color(red: 0, green: 0, blue: 0.5))
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
            }
            Button (action: {}){
                Text("b. The best and most relaxing thing ever")
                
            }
            Button (action: {}){
                Text("c. Pretty boring; you'd rather be outside")
                
            }
            Spacer()
            NavigationLink(destination: Q4()){
                Text("Next")
                    .frame(width:300)
                    .padding(.vertical, 12)
                    .foregroundColor(.white)
                    .background(.purple)
                    .cornerRadius(15)
            }
            .padding()
            
        }
    }
    
    struct Q3_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
