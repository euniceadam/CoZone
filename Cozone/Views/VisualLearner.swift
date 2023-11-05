//
//  VisualLearner.swift
//  Cozone
//
//  Created by Eunice Adam on 11/5/23.
//


import SwiftUI

struct VisualLearner: View {
    // creating variables with custom hex code colors from asset catalog
    let lavender = Color("lavender")
    let navy = Color("navy")
    let gray = Color("gray")
    
    var body: some View {
        VStack {
            Text("We think that you're a...")
                .font(.custom("Outfit-Regular", size: 38))
                .padding(.top, 40.0)
                .frame(maxWidth: 350, alignment: .leading)
                .fontWeight(.medium)
                
            
            Image("vl")
                .resizable()
                .frame(width: 207, height: 112)
                .padding(.vertical, 50.0)
            
            Text("Visual Learner")
                .font(.title)
                .fontWeight(.semibold)
                .frame(maxWidth: 350, alignment: .center)
            

            Text("People who have a preference for learning in a visual way can choose to learn by reading or seeing pictures. You may feel that you understand and remember things by sight.")
                    .padding(.vertical, 40.0)
                    .padding(.horizontal, 20.0)
                    .frame(maxWidth: 340, alignment: .center)
                    .background(gray)
                    .cornerRadius(30)
                    .fontWeight(.regular)
            
            Spacer()
            
            NavigationLink(destination: BrowsePartnersView()) {
                Text("Find some partners!")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 350)
                    .padding(.vertical, 9)
                    .foregroundColor(.white)
                    .background(lavender)
                    .cornerRadius(15)
            }.padding(.top, 5)
            
        }
    }
}

struct VisualLearner_Previews: PreviewProvider {
    static var previews: some View {
        VisualLearner()
    }
}
