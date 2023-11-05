//
//  LoginView.swift
//  Cozone
//
//  Created by Eunice Adam on 11/5/23.
//
import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State private var isLoginEnabled = false
    @State private var isNavigationActive = false

    let lavender = Color("lavender")
    let gray = Color("gray")
    let purple = Color("purple")

    var body: some View {
        NavigationView {
            VStack {
                Spacer(minLength: 200)
                Text("Sign-in with your email.")
                    .frame(maxWidth: 350, alignment: .leading)
                    .font(.custom("Outfit-Regular", size: 26))
                    .padding(.bottom, -14.0)
                
                VStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(gray)
                        .frame(width: 350, height: 45)
                        .overlay(
                            TextField("Email", text: $username)
                                .padding(.horizontal, 10)
                                .font(.custom("Montserrat-Medium", size: 16))
                                .onChange(of: username) { _ in
                                    checkLoginButtonState()
                                }
                        )
                        .padding(.vertical, 10)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(gray)
                        .frame(width: 350, height: 45)
                        .overlay(
                            SecureField("Password", text: $password)
                                .padding(.horizontal, 10)
                                .font(.custom("Montserrat-Medium", size: 16))
                                .onChange(of: password) { _ in
                                    checkLoginButtonState()
                                }
                        )
                        .padding(.vertical, 10)
                    
                    Text("Forgot Password?")
                        .frame(maxWidth: 370, alignment: .leading)
                        .font(.custom("Montserrat-Medium", size: 14))
                        .foregroundColor(.gray)
                        .underline()
                    
                    Button(action: {
                        // Perform login action here
                        // Set isLoginEnabled to true if login is successful
                        if isLoginEnabled {
                            isNavigationActive = true
                        }
                    }) {
                        Text("Login")
                            .fontWeight(.semibold)
                            .font(.title3)
                            .frame(width: 340)
                            .padding(.vertical, 10)
                            .foregroundColor(.white)
                            .background(isLoginEnabled ? lavender : purple)
                            .cornerRadius(8)
                    }
                    .disabled(!isLoginEnabled) // Disable the button when not enabled
                    .padding(.top, 20)
                }
                .padding()
                
                Image("hand")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 400)
                    .offset(x: 0, y: -30)
            }
            .padding()
            .background(
                NavigationLink("", destination: Q2(), isActive: $isNavigationActive)
                    .opacity(0)
            )
        }
    }

    private func checkLoginButtonState() {
        isLoginEnabled = !username.isEmpty && !password.isEmpty
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LoginView()
        }
    }
}

