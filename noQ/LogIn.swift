//
//  LogIn.swift
//  noQ
//
//  Created by Annisa Az Zahra on 01/04/24.
//

import SwiftUI

struct LogIn: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State var isShowingPassword: Bool = false
    @FocusState var isFieldFocus: FieldToFocus?
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView{
            VStack{
                VStack(alignment: .leading){
                    Button(action: LogIn) {
                        // Sub-Header/S5›
                        Text("Back")
                          .font(
                            Font.custom("Poppins", size: 14)
                          )
                          .foregroundColor(Constants.colorsBaseBlack)
                          .onTapGesture (perform: {
                              self.presentationMode.wrappedValue.dismiss()
                          })
                    }
                    
                    // Form
                    VStack (alignment: .center, spacing: 36){
                        Image("logo")
                          .frame(width: 57, height: 44)
                        
                        Spacer()
                        // Header/H1
                        VStack (alignment: .center, spacing: 0){
                            Text("Welcome back!")
                              .font(
                                Font.custom("Poppins", size: 34)
                                  .weight(.heavy)
                              )
                          .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                            
                            // Body/B1
                            Text("You’ve been missed")
                              .font(Font.custom("Poppins", size: 20))
                              .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                        }
                        
                        // Form
                        VStack (alignment: .trailing, spacing: 16){
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
                            
                            // Password
                                VStack(alignment: .leading){
                                    Text("Password")
                                        .font(Font.custom("Poppins", size: 14))
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color(red: 0.33, green: 0.34, blue: 0.35))
                                    
                                    ZStack{
                                        Group {
                                            if isShowingPassword {
                                                VStack(alignment: .leading){
                                                    TextField(text: $password, prompt: Text("Your Password")) {
                                                    }.padding(16)
                                                        .cornerRadius(14)
                                                        .overlay(
                                                            RoundedRectangle(cornerRadius: 14)
                                                                .inset(by: 0.5)
                                                                .stroke(Color(red: 0.69, green: 0.71, blue: 0.72), lineWidth: 1)
                                                        )
                                                }
                                            }else {
                                                VStack(alignment: .leading){
                                                    SecureField("Your Password", text: $password)
                                                        .focused($isFieldFocus, equals: .secureField).padding(16)
                                                        .cornerRadius(14)
                                                        .overlay(
                                                            RoundedRectangle(cornerRadius: 14)
                                                                .inset(by: 0.5)
                                                                .stroke(Color(red: 0.69, green: 0.71, blue: 0.72), lineWidth: 1)
                                                        )
                                                }
                                            }
                                        }
                                        .disableAutocorrection(true)
                                        .autocapitalization(.none)
                                        
                                        HStack{
                                            Spacer()
                                            Button {
                                                isShowingPassword.toggle()
                                            }label: {
                                                if isShowingPassword {
                                                    Image(systemName:"eye.slash")
                                                        .foregroundColor(Color(red: 0.29, green: 0.8, blue: 0.89))
                                                }else {
                                                    Image(systemName:"eye").foregroundColor(Color(red: 0.29, green: 0.8, blue: 0.89))
                                                }
                                            }
                                            
                                        }.padding(20)
                                    }
                                
                            }
                            
                            Button(action: LogIn) {
                                Text("Forgot your Password?")
                                    .font(Font.custom("Poppins", size: 12))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.29, green: 0.8, blue: 0.89))
                            }
                        }
                        
                        
                        Button(action: LogIn) {
                            HStack(alignment: .center, spacing: 8) { // Body/B4
                                Text("Sign In")
                                    .font(Font.custom("Poppins-SemiBold", size: 16))
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
                            Text("Didn’t have an account ? ")
                                .font(Font.custom("Poppins", size: 12))
                                .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                                
                            Button(action: LogIn) {
                                Text("Sign Up")
                                    .font(Font.custom("Poppins", size: 12))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.29, green: 0.8, blue: 0.89))
                            }
                                
                        }
                    }
                        
                }.padding(20)

            }
Spacer()

            }
        .navigationBarBackButtonHidden(true)
        }

    private func LogIn() {
        print("success login cune")
    }
    
    enum FieldToFocus {
        case secureField, textField
    }
}

#Preview {
    LogIn()
}
