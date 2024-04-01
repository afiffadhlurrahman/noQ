//
//  SignUpView.swift
//  noQ
//
//  Created by Annisa Az Zahra on 01/04/24.
//

import SwiftUI

struct SignUpView: View {
    @State private var name: String = ""
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var passwordConf: String = ""
    
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Button(action: LogIn) {
                    // Sub-Header/S5›
                    Text("Back")
                      .font(
                        Font.custom("Poppins", size: 14)
                          .weight(.semibold)
                      )
                      .foregroundColor(Constants.colorsBaseBlack)
                }
                
                // Form
                VStack (alignment: .center, spacing: 36){
                    Image("logo")
                      .frame(width: 57, height: 44)
                    
                    Spacer()
                    // Header/H1
                    VStack (alignment: .center, spacing: 0){
                        Text("Sign Up")
                          .font(
                            Font.custom("Poppins", size: 34)
                          )
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                        
                        // Body/B1
                        Text("You’ll be shopping in no time!")
                          .font(Font.custom("Poppins", size: 20))
                          .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                    }
                    
                    // Form
                    VStack (alignment: .trailing, spacing: 16){
                        VStack(alignment: .leading){
                            Text("Name")
                              .font(Font.custom("Poppins", size: 14))
                              .multilineTextAlignment(.center)
                              .foregroundColor(Color(red: 0.33, green: 0.34, blue: 0.35))
                            TextField(text: $name, prompt: Text("Jane Doe")) {
                            }.padding(16)
                                .cornerRadius(14)
                                .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                .inset(by: 0.5)
                                .stroke(Color(red: 0.69, green: 0.71, blue: 0.72), lineWidth: 1)
                                )
                        }
                        
                        VStack(alignment: .leading){
                            Text("Username")
                              .font(Font.custom("Poppins", size: 14))
                              .multilineTextAlignment(.center)
                              .foregroundColor(Color(red: 0.33, green: 0.34, blue: 0.35))
                            TextField(text: $username, prompt: Text("janedoe12")) {
                            }.padding(16)
                                .cornerRadius(14)
                                .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                .inset(by: 0.5)
                                .stroke(Color(red: 0.69, green: 0.71, blue: 0.72), lineWidth: 1)
                                )
                        }
                        
                        VStack(alignment: .leading){
                            Text("Email")
                              .font(Font.custom("Poppins", size: 14))
                              .multilineTextAlignment(.center)
                              .foregroundColor(Color(red: 0.33, green: 0.34, blue: 0.35))
                            TextField(text: $email, prompt: Text("example@email .com")) {
                                Text("Username")
                            }.padding(16)
                                .cornerRadius(14)
                                .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                .inset(by: 0.5)
                                .stroke(Color(red: 0.69, green: 0.71, blue: 0.72), lineWidth: 1)
                                )
                        }
                        
                        VStack(alignment: .leading){
                            Text("Password")
                              .font(Font.custom("Poppins", size: 14))
                              .multilineTextAlignment(.center)
                              .foregroundColor(Color(red: 0.33, green: 0.34, blue: 0.35))
                            TextField(text: $password, prompt: Text("Your Password")) {
                                Text("Username")
                            }.padding(16)
                                .cornerRadius(14)
                                .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                .inset(by: 0.5)
                                .stroke(Color(red: 0.69, green: 0.71, blue: 0.72), lineWidth: 1)
                                )
                            
                        }
                        
                        VStack(alignment: .leading){
                            Text("Confirm Your Password")
                              .font(Font.custom("Poppins", size: 14))
                              .multilineTextAlignment(.center)
                              .foregroundColor(Color(red: 0.33, green: 0.34, blue: 0.35))
                            TextField(text: $passwordConf, prompt: Text("Your Password")) {
                                Text("Username")
                            }.padding(16)
                                .cornerRadius(14)
                                .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                .inset(by: 0.5)
                                .stroke(Color(red: 0.69, green: 0.71, blue: 0.72), lineWidth: 1)
                                )
                        }
                    
                    }
                    
                    
                    Button(action: LogIn) {
                        HStack(alignment: .center, spacing: 8) { // Body/B4
                            Text("Sign Up")
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
                    
                    Spacer()
                    
                    HStack{
                        // Body/B4
                        Text("Already have an account ? ")
                            .font(Font.custom("Poppins", size: 12))
                            .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                            
                        Button(action: LogIn) {
                            Text("Sign In")
                                .font(Font.custom("Poppins", size: 12))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.29, green: 0.8, blue: 0.89))
                        }
                            
                    }
                }
                    
            }.padding(20)

            }
        }
    
    private func LogIn() {
        print("success login cune")
    }
}

#Preview {
    SignUpView()
}
