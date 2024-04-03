//
//  Maps.swift
//  noQ
//
//  Created by Muhammad Afif Fadhlurrahman on 01/04/24.
//

import SwiftUI

struct Maps: View {
    var body: some View {
        VStack(spacing: 16){
            HStack(alignment: .center){
                BackButton()
                Spacer()
                // Sub-Header/S3
                Text("Nearest Store")
                    .font(
                        Font.custom("Poppins-SemiBold", size: 20)
                    )
                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                Spacer()
            }.padding(.horizontal, 22)
            
            HStack{
                Image("map1").resizable()
                    .frame(width: 350, height: 440)
            }
            
            ScrollView{
                VStack(spacing: 16){
                    // Location 1
                    HStack{
                        Image("objects")
                            .resizable()
                            .frame(width: 64, height: 44)
                        
                        VStack(alignment: .leading, spacing: 4){
                            Text("Lawson GOP9").font(Font.custom("Poppins-SemiBold", size: 14))
                            HStack(){
                                Image(systemName: "mappin")
                                    .foregroundColor(.yellow)
                                Text("Green Office Park 9").font(Font.custom("Poppins", size: 12))
                            }
                            HStack(){
                                Image(systemName: "clock.fill")
                                    .foregroundColor(.yellow)
                                Text("7.30 AM - 9.00 PM").font(Font.custom("Poppins", size: 12))
                            }
                        }
                    }
                    .padding(12)
                    .frame(width: 350, alignment: .leading)
                    .background(.white)
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.05), radius: 3.5, x: 1, y: 4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                    )
                    
                    // Location 2
                    HStack{
                        Image("objects")
                            .resizable()
                            .frame(width: 64, height: 44)
                        
                        VStack(alignment: .leading, spacing: 4){
                            Text("Lawson BSD Marketing Office").font(Font.custom("Poppins-SemiBold", size: 14))
                            HStack(){
                                Image(systemName: "mappin")
                                    .foregroundColor(.yellow)
                                Text("Green Office Park 9").font(Font.custom("Poppins", size: 12))
                            }
                            HStack(){
                                Image(systemName: "clock.fill")
                                    .foregroundColor(.yellow)
                                Text("7.30 AM - 9.00 PM").font(Font.custom("Poppins", size: 12))
                            }
                        }
                    }
                    .padding(12)
                    .frame(width: 350, alignment: .leading)
                    .background(.white)
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.05), radius: 3.5, x: 1, y: 4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                    )
                    
                    // Location 3
                    HStack{
                        Image("objects")
                            .resizable()
                            .frame(width: 64, height: 44)
                        
                        VStack(alignment: .leading, spacing: 4){
                            Text("Lawson The Breeze").font(Font.custom("Poppins-SemiBold", size: 14))
                            HStack(){
                                Image(systemName: "mappin")
                                    .foregroundColor(.yellow)
                                Text("Green Office Park 9").font(Font.custom("Poppins", size: 12))
                            }
                            HStack(){
                                Image(systemName: "clock.fill")
                                    .foregroundColor(.yellow)
                                Text("7.30 AM - 9.00 PM").font(Font.custom("Poppins", size: 12))
                            }
                        }
                    }
                    .padding(12)
                    .frame(width: 350, alignment: .leading)
                    .background(.white)
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.05), radius: 3.5, x: 1, y: 4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                    )
                    
                }
            }
            
        }
    }
}

#Preview {
    Maps()
}
