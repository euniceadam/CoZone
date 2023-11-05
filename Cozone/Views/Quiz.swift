//
//  Quiz.swift
//  Cozone
//
//  Created by Eunice Adam on 11/5/23.
//

import SwiftUI

struct Quiz: View {
    let lavender = Color("lavender")
    
    var body: some View {
        
            VStack {
                Text("What's your")
                    .font(.custom("Outfit-Regular", size: 38))
                    .frame(maxWidth: 350, alignment: .leading)
                    .padding(.bottom, -35.0)
                
                Text("CoZonality?")
                    .frame(maxWidth: 350, alignment: .leading)
                    .font(.custom("Outfit-SemiBold", size: 48))
                    .frame(maxWidth: 350, alignment: .leading)
                    .foregroundColor(lavender)
                    .padding(.bottom, -2.0)
                
                Text("Answer a few questions to find out what kind of partner you are.")
                    .frame(maxWidth: 350, alignment: .leading)
                    .font(.custom("Montserrat-Light", size: 16))
                    .padding(.bottom, 20.0)
                
                Spacer()
                
                
            }
            .padding(.top, 40.0)
    }
}

struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}
