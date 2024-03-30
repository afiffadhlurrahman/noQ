//
//  OrderHistoryDetails.swift
//  noQ
//
//  Created by Muhammad Afif Fadhlurrahman on 31/03/24.
//

import SwiftUI

struct OrderHistoryDetails: View {
    var body: some View {
        VStack(spacing: 16){
            HStack{
                Image(systemName: "chevron.left").font(.system(size: 24))
                Spacer()
                // Sub-Header/S3
                Text("Order #4321")
                    .font(
                        Font.custom("Poppins-SemiBold", size: 20)
                    )
                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                Spacer()
            }
        }.padding(.horizontal, 20).padding(.bottom, 24).padding(.top, 16)
        
        HStack{
            VStack{
                HStack{
                    Text("Lawson  Syahdan")
                        .font(Font.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                }.padding(.bottom, 1)
                
                Text("26 Mar 2024 - 02.30 PM")
                    .font(Font.custom("Poppins", size: 12))
                    .foregroundColor(Color(red: 0.33, green: 0.34, blue: 0.35))
            }
            Spacer()
            Text("Complete")
                .font(Font.custom("Poppins-SemiBold", size: 16))
                .frame(maxWidth: 116)
                .background(Color(red: 0.94, green: 0.99, blue: 0.96))
                .cornerRadius(8)
                .foregroundColor(Color(red: 0.13, green: 0.77, blue: 0.37))
            
        }.padding(.horizontal, 24).padding(.bottom, 16)
        
        ScrollView{
            HStack{
                Image("pocky").resizable()
                    .frame(width: 64, height: 64)
                VStack(alignment: .leading){
                    Text("Pocky Chocolate")
                    .font(Font.custom("Poppins-SemiBold", size: 14))
                    
                    HStack{
                        HStack(alignment: .top){
                            Text("36% off")
                            .font(
                                Font.custom("Poppins-Regular", size: 12)
                                    .weight(.medium)
                            )
                            .foregroundColor(.white)
                        }
                        .padding(.horizontal, 4)
                        .padding(.vertical, 2)
                        .background(Color(red: 0.96, green: 0.25, blue: 0.37))
                        .cornerRadius(Constants.borderRadiusDEFAULT)
                        
                        Text("Rp20,800")
                        .font(Font.custom("Poppins", size: 14))
                        .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                    }
                    
                    HStack{
                        Text("Rp10,800")
                        Spacer()
                        Text("X2")
                    }.font(Font.custom("Poppins-SemiBold", size: 16))
                }.padding(4)
                
                }.padding(12).frame(width: 350, alignment: .leading).background(.white).cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 1, y: 4).overlay(
                    RoundedRectangle(cornerRadius: 12)
                    .inset(by: 0.1)
                    .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1))
            
            HStack{
                Image("oreo").resizable()
                    .frame(width: 64, height: 64)
                VStack(alignment: .leading){
                    Text("Oreo Strawberry")
                    .font(Font.custom("Poppins-SemiBold", size: 14))
                    
                    HStack{
                        HStack(alignment: .top){
                            Text("36% off")
                            .font(
                                Font.custom("Poppins-Regular", size: 12)
                                    .weight(.medium)
                            )
                            .foregroundColor(.white)
                        }
                        .padding(.horizontal, 4)
                        .padding(.vertical, 2)
                        .background(Color(red: 0.96, green: 0.25, blue: 0.37))
                        .cornerRadius(Constants.borderRadiusDEFAULT)
                        
                        Text("Rp20,800")
                        .font(Font.custom("Poppins", size: 14))
                        .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                    }
                    
                    HStack{
                        Text("Rp10,800")
                        Spacer()
                        Text("X2")
                    }.font(Font.custom("Poppins-SemiBold", size: 16))
                }.padding(4)
            }.padding(12).frame(width: 350, alignment: .leading).background(.white).cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 1, y: 4).overlay(
                RoundedRectangle(cornerRadius: 12)
                    .inset(by: 0.1)
                    .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
              )
            .padding(.vertical, 15)
        }
        
        VStack(spacing: 16) {
            CustomDivider(color: Color(red: 0.93, green: 0.98, blue: 0.99), height: 2)
            
            HStack{
                Text("4 Items")
                    .font(Font.custom("poppins-semibold", size:14))
                Spacer()
                Text("Rp30,500")
                    .font(Font.custom("poppins-semibold", size:20))
            }

            // Button Reorder
            HStack(alignment: .center, spacing: 8) { // Body/B4
                Text("Reorder")
                  .font(Font.custom("Poppins-SemiBold", size: 16))
                  .multilineTextAlignment(.center)
                  .foregroundColor(.white)
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color(red: 0.29, green: 0.8, blue: 0.89))
            .cornerRadius(8)

        }.padding(.horizontal, 20)
    }
}

#Preview {
    OrderHistoryDetails()
}
