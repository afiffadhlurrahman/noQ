//
//  OrderHistory.swift
//  noQ
//
//  Created by Muhammad Afif Fadhlurrahman on 30/03/24.
//

import SwiftUI

struct OrderHistory: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        NavigationView{
            VStack(spacing: 16){
                HStack{
                    Image(systemName: "chevron.left").font(.system(size: 24))
                        .onTapGesture (perform: {
                            self.presentationMode.wrappedValue.dismiss()
                        })
                    Spacer()
                    // Sub-Header/S3
                    Text("Order History")
                        .font(
                            Font.custom("Poppins-SemiBold", size: 20)
                        )
                        .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                    Spacer()
                }.padding(.horizontal, 12)
                
                ScrollView(){
                    VStack(spacing: 24){
                        // Begin Order 1
                        VStack(alignment: .leading, spacing: 8){
                            HStack{
                                HStack(alignment: .center, spacing: 10){
                                    Text("Order #4231")
                                        .font(Font.custom("Poppins-SemiBold", size: 14))
                                        .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                                }
                                Spacer()
                                HStack{
                                    Text("Waiting for payment")
                                        .font(Font.custom("Poppins-SemiBold", size: 12))
                                        .padding(1)
                                        .lineLimit(1)
                                        .frame(maxWidth: 138, alignment: .center)
                                        .background(Color(red: 1, green: 0.96, blue: 0.88))
                                        .cornerRadius(8)
                                        .font(Font.custom("Poppins-Regular", size: 10))
                                        .foregroundColor(Color(red: 1, green: 0.76, blue: 0.29))
                                }
                            }
                            VStack(alignment: .leading, spacing: 8){
                                Text("Lawson Syahdan")
                                Text("26 Mar 2024 - 02.30 PM")
                            }
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                            
                            HStack(){
                                Text("4 Items")
                                Spacer()
                                Text("Rp30.500")
                            }
                            .font(
                              Font.custom("Poppins-SemiBold", size: 14)
                            )
                            .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                            
                            HStack{
                                // Button See Details
                                NavigationLink(destination: OrderHistoryDetails()){
                                    HStack(alignment: .center, spacing: 8) { // Body/B4
                                        Text("See Details")
                                          .font(Font.custom("Poppins", size: 12))
                                          .multilineTextAlignment(.center)
                                          .foregroundColor(Color(red: 1, green: 0.76, blue: 0.29))
                                    }
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 8)
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .overlay(RoundedRectangle(cornerRadius: 8)
                                        .inset(by: 0.5)
                                        .stroke(Color(red: 1, green: 0.76, blue: 0.29), lineWidth: 1)
                                    )
                                }
                                
                                // Button Reorder
                                HStack(alignment: .center, spacing: 8) { // Body/B4
                                    Text("Reorder")
                                      .font(Font.custom("Poppins", size: 12))
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(.white)
                                }
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                                .cornerRadius(8)
                            }
                        }.padding(12).frame(width: 350, alignment: .leading).background(.white)           .cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 1, y: 4).overlay(
                            RoundedRectangle(cornerRadius: 12)
                              .inset(by: 0.5)
                              .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                          )
                        // End Order 1
                        
                        // Begin Order 2
                        VStack(alignment: .leading, spacing: 8){
                            HStack{
                                HStack(alignment: .center, spacing: 10){
                                    Text("Order #4231")
                                        .font(Font.custom("Poppins-SemiBold", size: 14))
                                        .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                                }
                                Spacer()
                                HStack{
                                    Text("Completed")
                                        .font(Font.custom("Poppins-SemiBold", size: 12))
                                        .frame(maxWidth: 80, alignment: .center)
                                        .background(Color(red: 0.94, green: 0.99, blue: 0.95))
                                        .cornerRadius(8)
                                        .font(Font.custom("Poppins-Regular", size: 10))
                                        .foregroundColor(Color(red: 0.13, green: 0.77, blue: 0.36))
                                }
                            }
                            VStack(alignment: .leading, spacing: 8){
                                Text("Lawson Syahdan")
                                Text("26 Mar 2024 - 02.30 PM")
                            }
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                            
                            HStack(){
                                Text("4 Items")
                                Spacer()
                                Text("Rp30.500")
                            }
                            .font(
                              Font.custom("Poppins-SemiBold", size: 14)
                            )
                            .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                            
                            
                            HStack{
                                // Button See Details
                                NavigationLink(destination: OrderHistoryDetails()){
                                    HStack(alignment: .center, spacing: 8) { // Body/B4
                                        Text("See Details")
                                            .font(Font.custom("Poppins", size: 12))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color(red: 1, green: 0.76, blue: 0.29))
                                    }
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 8)
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .overlay(RoundedRectangle(cornerRadius: 8)
                                        .inset(by: 0.5)
                                        .stroke(Color(red: 1, green: 0.76, blue: 0.29), lineWidth: 1)
                                    )
                                }
                                
                                // Button Reorder
                                HStack(alignment: .center, spacing: 8) { // Body/B4
                                    Text("Reorder")
                                      .font(Font.custom("Poppins", size: 12))
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(.white)
                                }
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                                .cornerRadius(8)
                            }
                        }.padding(12).frame(width: 350, alignment: .leading).background(.white)           .cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 1, y: 4).overlay(
                            RoundedRectangle(cornerRadius: 12)
                              .inset(by: 0.5)
                              .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                          )
                        // End Order 2
                        
                        // Begin Order 3
                        VStack(alignment: .leading, spacing: 8){
                            HStack{
                                HStack(alignment: .top, spacing: 10){
                                    Text("Order #4231")
                                        .font(Font.custom("Poppins-SemiBold", size: 14))
                                        .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                                }
                                Spacer()
                                HStack{
                                    Text("Cancelled")
                                        .font(Font.custom("Poppins-SemiBold", size: 12))
                                        .frame(maxWidth: 75, alignment: .center)
                                        .background(Color(red: 1, green: 0.94, blue: 0.94))
                                        .cornerRadius(8)
                                        .font(Font.custom("Poppins-Regular", size: 10))
                                        .foregroundColor(Color(red: 0.95, green: 0.24, blue: 0.36))
                                }
                            }
                            VStack(alignment: .leading, spacing: 8){
                                Text("Lawson Syahdan")
                                Text("26 Mar 2024 - 02.30 PM")
                            }
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                            
                            HStack(){
                                Text("4 Items")
                                Spacer()
                                Text("Rp30.500")
                            }
                            .font(
                              Font.custom("Poppins-SemiBold", size: 14)
                            )
                            .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                            
                            
                            HStack{
                                // Button See Details
                                NavigationLink(destination: OrderHistoryDetails()){
                                    HStack(alignment: .center, spacing: 8) { // Body/B4
                                        Text("See Details")
                                            .font(Font.custom("Poppins", size: 12))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color(red: 1, green: 0.76, blue: 0.29))
                                    }
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 8)
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .overlay(RoundedRectangle(cornerRadius: 8)
                                        .inset(by: 0.5)
                                        .stroke(Color(red: 1, green: 0.76, blue: 0.29), lineWidth: 1)
                                    )
                                }
                                // Button Reorder
                                HStack(alignment: .center, spacing: 8) { // Body/B4
                                    Text("Reorder")
                                      .font(Font.custom("Poppins", size: 12))
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(.white)
                                }
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                                .cornerRadius(8)
                            }
                        }.padding(12).frame(width: 350, alignment: .leading).background(.white)           .cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 1, y: 4).overlay(
                            RoundedRectangle(cornerRadius: 12)
                              .inset(by: 0.5)
                              .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                          )
                        // End Order 3
                    }
                }
            }
            .padding(.horizontal, 20).padding(.vertical, 16)
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    OrderHistory()
}
