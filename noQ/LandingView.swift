//
//  LandingView.swift
//  noQ
//
//  Created by Annisa Az Zahra on 01/04/24.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        NavigationView{
            ZStack{
                VStack(){
                    VStack(alignment: .leading){
                        NavigationLink(destination: HomeView()
                            .navigationBarBackButtonHidden(true)){
                            // Sub-Header/S5›
                            Text("Skip")
                              .font(
                                Font.custom("Poppins", size: 14)
                                  .weight(.semibold)
                              )
                              .foregroundColor(.white)
                              .padding(.horizontal, 40)
                            
                        }
                        Image("landing3")
                            .resizable()
                            .frame(width: 430, height: 321)
                            .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                        
                    }.background(Color(red: 0.29, green: 0.8, blue: 0.89))
                    
                        // Welcome text
                    VStack{
                            Image("logo")
                              .frame(width: 57, height: 44)
                            
                            Text("Welcome !")
                              .font(
                                Font.custom("Poppins", size: 34)
                              )
                              .fontWeight(.bold)
                              .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                            
                            // Body/B1
                            Text("Enjoy shopping without queuing")
                              .font(Font.custom("Poppins", size: 20))
                              .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                        }.padding(20)
                        
                        
                        // Button
                        VStack{
                            NavigationLink(destination: LogIn()
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                                .navigationBarBackButtonHidden(true))
                            {
                                HStack(alignment: .center, spacing: 8) { // Body/B4
                                    Text("Sign In with Email")
                                        .font(Font.custom("Poppins-semibold", size: 16))
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.white)
                                }
                                .padding(.horizontal, 32)
                                .padding(.vertical, 16)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                                .cornerRadius(14)
                            }
                            
                            Button(action:SignInApple) {
                                HStack(alignment: .center, spacing: 8) { // Body/B4
                                    Image(systemName: "apple.logo")
                                        .foregroundColor(Color.black)
                                    // Sub-Header/S4
                                    Text("Sign in with Apple ID")
                                      .font(
                                        Font.custom("Poppins", size: 16)
                                          .weight(.semibold)
                                      )
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                                }
                                .padding(.horizontal, 32)
                                .padding(.vertical, 16)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .cornerRadius(14)
                                .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                .inset(by: 0.5)
                                .stroke(Color(red: 0.33, green: 0.34, blue: 0.35), lineWidth: 1)
                                )
                            }
                    }.padding(20)
                    
                    Spacer()
                    
                    HStack{
                        // Body/B4
                        Text("Didn’t have an account ? ")
                            .font(Font.custom("Poppins", size: 12))
                            .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                            
                        NavigationLink(destination: SignUpView()
                            .navigationBarBackButtonHidden(true)
                            .navigationBarHidden(true))
                        {
                            Text("Sign Up")
                                .font(Font.custom("Poppins", size: 12))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.29, green: 0.8, blue: 0.89))
                        }
                            
                    }
                }
            }
        }
        
    }
    private func SignInEmail() {
        print("success login email")
    }
    
    private func SignInApple() {
        print("success login apple")
    }
    
    private func SignUp() {
        print("success signup")
    }
}

#Preview {
    LandingView()
}
