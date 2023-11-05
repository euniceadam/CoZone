//
//  ContentView.swift
//  CoZone
//
//  Created by Adam, Eunice on 11/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let lavender = Color("lavender")
        NavigationView {
            ZStack{
                Color("white").edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Welcome to")
                        .frame(maxWidth: 350, alignment: .leading)
                        .font(.custom("Outfit-Regular", size: 48))
                        .padding(.bottom, -35.0)
                    
                    Text("CoZone!")
                        .padding(.bottom, 1.0)
                        .frame(maxWidth: 350, alignment: .leading)
                        .font(.custom("Outfit-SemiBold", size: 60))
                    
                    
                    Text("Finding a partner for class has never been easier.")
                        .frame(maxWidth: 350, alignment: .leading)
                        .font(.custom("Montserrat-Light", size: 16))
                        .padding(.bottom, 30.0)
                    
                    Image("intro")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 390)
                        .offset(x: 0, y: 10)
                    
                    Button (action: {}){
                        Text("Register")
                            .font(.custom("Outfit-Medium", size: 16))
                            .frame(width: 300)
                            .padding(.vertical, 12)
                            .foregroundColor(.white)
                            .background(lavender)
                            .cornerRadius(15)
                    }
                    .padding(.bottom, 10)
                    
                    NavigationLink(destination: LoginView()) {
                        Text("Login")
                            .font(.custom("Outfit-Medium", size: 16))
                            .frame(width: 300)
                            .padding(.vertical, 12)
                            .foregroundColor(lavender)
                            .background(Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(lavender, lineWidth: 1)
                            )
                    }


                    Spacer()
                    
                }
                .padding()


                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
