//
//  ProfileView.swift
//  noQ
//
//  Created by Dinda Ayu Syafitri on 03/04/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {

        Header(title: "Personal Info")
            .padding(.horizontal,20)
        NavigationView {
            VStack(spacing:20) {
                Image("profile-mascot")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)

                VStack(spacing:24) {
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Image(systemName: "person.text.rectangle")
                                .foregroundColor(Color(red: 0.24, green: 0.64, blue: 0.71))
                            Text("Username")
                            .font(
                            Font.custom("Poppins-SemiBold", size: 16))
                            Spacer()
                        }
                        Text("elisac7s1")
                            .font(Font.custom("Poppins", size: 16))
                    }
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Image(systemName: "person")
                                .foregroundColor(Color(red: 0.24, green: 0.64, blue: 0.71))
                            Text("Name")
                            .font(
                            Font.custom("Poppins-SemiBold", size: 16))
                            Spacer()
                        }
                        Text("Elisa Rodriguez")
                            .font(Font.custom("Poppins", size: 16))
                    }
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(Color(red: 0.24, green: 0.64, blue: 0.71))
                            Text("Email")
                            .font(
                            Font.custom("Poppins-SemiBold", size: 16))
                            Spacer()
                        }
                        Text("elisa@sandarun.corp")
                            .font(Font.custom("Poppins", size: 16))
                            .foregroundStyle(.black)
                    }
                }
                .padding(.bottom, 100)

                NavigationLink(destination: LogIn()) {
                    HStack(alignment: .center, spacing: 8) {
                        Text("Log Out")
                          .font(
                            Font.custom("Poppins", size: 16)
                              .weight(.semibold)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color(red: 0.96, green: 0.25, blue: 0.37))
                        Image(systemName: "iphone.and.arrow.forward")
                            .foregroundColor(Color(red: 0.96, green: 0.25, blue: 0.37))
                    }
                    .padding(.horizontal, 32)
                    .padding(.vertical, 16)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .cornerRadius(14)
                    .overlay(
                    RoundedRectangle(cornerRadius: 14)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.96, green: 0.25, blue: 0.37))
                    )
                }

                Spacer()
            }
            .padding(.horizontal,20)
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ProfileView()
}
