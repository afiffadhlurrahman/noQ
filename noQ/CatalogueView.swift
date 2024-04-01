//
//  CatalogueView.swift
//  noQ
//
//  Created by Sigit Academy on 28/03/24.
//

import SwiftUI

struct Constants {
static let colorsBaseBlack: Color = .black
static let borderRadiusDEFAULT: CGFloat = 4
}

struct CatalogueView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 16) {
            HStack{
                Image(systemName: "chevron.left").font(.system(size: 24)).onTapGesture(perform: {
                        dismiss()
                })
                Spacer()
                // Sub-Header/S3
                Text("Catalogue")
                    .font(
                        Font.custom("Poppins-SemiBold", size: 20)
                    )
                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                Spacer()
            }
            .padding(.bottom, 11)
            HStack{
                HStack{
                    VStack(spacing: 5.0){
                        // Body/B5
                        Text("Store location")
                            .font(Font.custom("Poppins-Regular", size: 10))
                            .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack(spacing: 8){
                            Text("Lawson Syahdan")
                                .font(.custom("Poppins-Regular", size: 16))
                                .fontWeight(.bold)
                            Image(systemName: "chevron.down")                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }.frame(maxWidth: .infinity)
                Image(systemName: "basket")
            }
            HStack{
                HStack(alignment: .center, spacing: 10) {
                    Text("Banana Milk")
                        .font(Font.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Constants.colorsBaseBlack)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.white)
                .cornerRadius(36)
                .overlay(
                    RoundedRectangle(cornerRadius: 36)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.29, green: 0.8, blue: 0.89), lineWidth: 1)
                )
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                    .clipShape(Circle())
            }
            
            ScrollView(.horizontal) {
                HStack(spacing: 12) {
                    HStack(alignment: .center, spacing: 10) {
                        Text("% Discount")                      .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundColor(Color(red: 1, green: 0.76, blue: 0.29))
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color(red: 1, green: 0.96, blue: 0.88))
                    .cornerRadius(8)
                    
                    HStack(alignment: .center, spacing: 10) {
                        Text("Fresh")                      .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundColor(Color(red: 0.24, green: 0.27, blue: 0.4))
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color(red: 0.95, green: 0.96, blue: 0.99))
                    .cornerRadius(8)
                    
                    HStack(alignment: .center, spacing: 10) {
                        Text("Snacks")                      .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundColor(Color(red: 0.24, green: 0.27, blue: 0.4))
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color(red: 0.95, green: 0.96, blue: 0.99))
                    .cornerRadius(8)
                    
                    HStack(alignment: .center, spacing: 10) {
                        Text("Drinks")                      .font(Font.custom("Poppins-Regular", size: 14))
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color(red: 0.95, green: 0.96, blue: 0.99))
                    .cornerRadius(8)
                    
                    HStack(alignment: .center, spacing: 10) {
                        Text("Micin")                      .font(Font.custom("Poppins-Regular", size: 14))
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color(red: 0.95, green: 0.96, blue: 0.99))
                    .cornerRadius(8)
                }
            }.foregroundColor(Color(red: 0.24, green: 0.27, blue: 0.4))
            
            ScrollView() {
                HStack(alignment: .top, spacing: 16){
                    VStack(alignment: .leading, spacing: 6){
                        Image("oreo").resizable()
                            .frame(width: 130.0, height: 130.0).padding(.horizontal, 28.5)
                        // Sub-Header/S5
                        Text("Oreo Strawberry 160gr")
                            .font(
                                Font.custom("Poppins-SemiBold", size: 14)
                            )
                            .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                        
                        HStack{
                            HStack(alignment: .top) {
                                Text("36% off")
                                    .font(
                                        Font.custom("Poppins-Regular", size: 10)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(.white)
                            }
                            .padding(.horizontal, 4)
                            .background(Color(red: 0.96, green: 0.25, blue: 0.37))
                            .cornerRadius(Constants.borderRadiusDEFAULT)
                            
                            Text("Rp20,800")
                                .font(Font.custom("Inter", size: 12))
                                .strikethrough()
                                .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                        }
                        
                        Text("Rp10,800")
                          .font(
                            Font.custom("Poppins-SemiBold", size: 14)
                              .weight(.semibold)
                          )
                          .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                        
                        HStack{
                            HStack(alignment: .center, spacing: 8) { // Body/B4
                                Text("Checkout")
                                  .font(Font.custom("Poppins", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(.white)
                            }
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                            .cornerRadius(8)
                            
                            HStack(alignment: .center, spacing: 8) { Image(systemName: "basket")
                                .frame(width: 20, height: 20) }
                            .padding(8)
                            .background(Color(red: 1, green: 0.76, blue: 0.29))
                            .cornerRadius(8)
                        }
                        
                    }.padding(12).frame(width: 187, alignment: .leading).background(.white)           .cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 0, y: 4).overlay(
                        RoundedRectangle(cornerRadius: 12)
                          .inset(by: 0.5)
                          .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                      )
                
                    VStack(alignment: .leading, spacing: 6){
                        Image("pocky").resizable()
                            .frame(width: 130.0, height: 130.0).padding(.horizontal, 28.5)
                        // Sub-Header/S5
                        Text("Pocky Chocolate 80gr")
                            .font(
                                Font.custom("Poppins-SemiBold", size: 14)
                            )
                            .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                        
                        HStack{
                            HStack(alignment: .top) {
                                Text("36% off")
                                    .font(
                                        Font.custom("Poppins-Regular", size: 10)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(.white)
                            }
                            .padding(.horizontal, 4)
                            .background(Color(red: 0.96, green: 0.25, blue: 0.37))
                            .cornerRadius(Constants.borderRadiusDEFAULT)
                            
                            Text("Rp20,800")
                                .font(Font.custom("Inter", size: 12))
                                .strikethrough()
                                .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                        }
                        
                        Text("Rp10,800")
                          .font(
                            Font.custom("Poppins-SemiBold", size: 14)
                              .weight(.semibold)
                          )
                          .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                        
                        HStack{
                            HStack(alignment: .center, spacing: 8) { // Body/B4
                                Text("Checkout")
                                  .font(Font.custom("Poppins", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(.white)
                            }
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                            .cornerRadius(8)
                            
                            HStack(alignment: .center, spacing: 8) { Image(systemName: "basket")
                                .frame(width: 20, height: 20) }
                            .padding(8)
                            .background(Color(red: 1, green: 0.76, blue: 0.29))
                            .cornerRadius(8)
                        }
                        
                    }.padding(12).frame(width: 187, alignment: .leading).background(.white)           .cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 0, y: 4).overlay(
                        RoundedRectangle(cornerRadius: 12)
                          .inset(by: 0.5)
                          .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                      )
                    
                }
                HStack(alignment: .top, spacing: 16){
                    VStack(alignment: .leading, spacing: 6){
                        Image("oreo").resizable()
                            .frame(width: 130.0, height: 130.0).padding(.horizontal, 28.5)
                        // Sub-Header/S5
                        Text("Oreo Strawberry 160gr")
                            .font(
                                Font.custom("Poppins-SemiBold", size: 14)
                            )
                            .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                        
                        HStack{
                            HStack(alignment: .top) {
                                Text("36% off")
                                    .font(
                                        Font.custom("Poppins-Regular", size: 10)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(.white)
                            }
                            .padding(.horizontal, 4)
                            .background(Color(red: 0.96, green: 0.25, blue: 0.37))
                            .cornerRadius(Constants.borderRadiusDEFAULT)
                            
                            Text("Rp20,800")
                                .font(Font.custom("Inter", size: 12))
                                .strikethrough()
                                .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                        }
                        
                        Text("Rp10,800")
                          .font(
                            Font.custom("Poppins-SemiBold", size: 14)
                              .weight(.semibold)
                          )
                          .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                        
                        HStack{
                            HStack(alignment: .center, spacing: 8) { // Body/B4
                                Text("Checkout")
                                  .font(Font.custom("Poppins", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(.white)
                            }
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                            .cornerRadius(8)
                            
                            HStack(alignment: .center, spacing: 8) { Image(systemName: "basket")
                                .frame(width: 20, height: 20) }
                            .padding(8)
                            .background(Color(red: 1, green: 0.76, blue: 0.29))
                            .cornerRadius(8)
                        }
                        
                    }.padding(12).frame(width: 187, alignment: .leading).background(.white)           .cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 0, y: 4).overlay(
                        RoundedRectangle(cornerRadius: 12)
                          .inset(by: 0.5)
                          .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                      )
                
                    VStack(alignment: .leading, spacing: 6){
                        Image("pocky").resizable()
                            .frame(width: 130.0, height: 130.0).padding(.horizontal, 28.5)
                        // Sub-Header/S5
                        Text("Pocky Chocolate 80gr")
                            .font(
                                Font.custom("Poppins-SemiBold", size: 14)
                            )
                            .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                        
                        HStack{
                            HStack(alignment: .top) {
                                Text("36% off")
                                    .font(
                                        Font.custom("Poppins-Regular", size: 10)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(.white)
                            }
                            .padding(.horizontal, 4)
                            .background(Color(red: 0.96, green: 0.25, blue: 0.37))
                            .cornerRadius(Constants.borderRadiusDEFAULT)
                            
                            Text("Rp20,800")
                                .font(Font.custom("Inter", size: 12))
                                .strikethrough()
                                .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                        }
                        
                        Text("Rp10,800")
                          .font(
                            Font.custom("Poppins-SemiBold", size: 14)
                              .weight(.semibold)
                          )
                          .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                        
                        HStack{
                            HStack(alignment: .center, spacing: 8) { // Body/B4
                                Text("Checkout")
                                  .font(Font.custom("Poppins", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(.white)
                            }
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                            .cornerRadius(8)
                            
                            HStack(alignment: .center, spacing: 8) { Image(systemName: "basket")
                                .frame(width: 20, height: 20) }
                            .padding(8)
                            .background(Color(red: 1, green: 0.76, blue: 0.29))
                            .cornerRadius(8)
                        }
                        
                    }.padding(12).frame(width: 187, alignment: .leading).background(.white)           .cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 0, y: 4).overlay(
                        RoundedRectangle(cornerRadius: 12)
                          .inset(by: 0.5)
                          .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                      )
                    
                }
                HStack(alignment: .top, spacing: 16){
                    VStack(alignment: .leading, spacing: 6){
                        Image("oreo").resizable()
                            .frame(width: 130.0, height: 130.0).padding(.horizontal, 28.5)
                        // Sub-Header/S5
                        Text("Oreo Strawberry 160gr")
                            .font(
                                Font.custom("Poppins-SemiBold", size: 14)
                            )
                            .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                        
                        HStack{
                            HStack(alignment: .top) {
                                Text("36% off")
                                    .font(
                                        Font.custom("Poppins-Regular", size: 10)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(.white)
                            }
                            .padding(.horizontal, 4)
                            .background(Color(red: 0.96, green: 0.25, blue: 0.37))
                            .cornerRadius(Constants.borderRadiusDEFAULT)
                            
                            Text("Rp20,800")
                                .font(Font.custom("Inter", size: 12))
                                .strikethrough()
                                .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                        }
                        
                        Text("Rp10,800")
                          .font(
                            Font.custom("Poppins-SemiBold", size: 14)
                              .weight(.semibold)
                          )
                          .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                        
                        HStack{
                            HStack(alignment: .center, spacing: 8) { // Body/B4
                                Text("Checkout")
                                  .font(Font.custom("Poppins", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(.white)
                            }
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                            .cornerRadius(8)
                            
                            HStack(alignment: .center, spacing: 8) { Image(systemName: "basket")
                                .frame(width: 20, height: 20) }
                            .padding(8)
                            .background(Color(red: 1, green: 0.76, blue: 0.29))
                            .cornerRadius(8)
                        }
                        
                    }.padding(12).frame(width: 187, alignment: .leading).background(.white)           .cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 0, y: 4).overlay(
                        RoundedRectangle(cornerRadius: 12)
                          .inset(by: 0.5)
                          .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                      )
                
                    VStack(alignment: .leading, spacing: 6){
                        Image("pocky").resizable()
                            .frame(width: 130.0, height: 130.0).padding(.horizontal, 28.5)
                        // Sub-Header/S5
                        Text("Pocky Chocolate 80gr")
                            .font(
                                Font.custom("Poppins-SemiBold", size: 14)
                            )
                            .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                        
                        HStack{
                            HStack(alignment: .top) {
                                Text("36% off")
                                    .font(
                                        Font.custom("Poppins-Regular", size: 10)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(.white)
                            }
                            .padding(.horizontal, 4)
                            .background(Color(red: 0.96, green: 0.25, blue: 0.37))
                            .cornerRadius(Constants.borderRadiusDEFAULT)
                            
                            Text("Rp20,800")
                                .font(Font.custom("Inter", size: 12))
                                .strikethrough()
                                .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                        }
                        
                        Text("Rp10,800")
                          .font(
                            Font.custom("Poppins-SemiBold", size: 14)
                              .weight(.semibold)
                          )
                          .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                        
                        HStack{
                            HStack(alignment: .center, spacing: 8) { // Body/B4
                                Text("Checkout")
                                  .font(Font.custom("Poppins", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(.white)
                            }
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                            .cornerRadius(8)
                            
                            HStack(alignment: .center, spacing: 8) { Image(systemName: "basket")
                                .frame(width: 20, height: 20) }
                            .padding(8)
                            .background(Color(red: 1, green: 0.76, blue: 0.29))
                            .cornerRadius(8)
                        }
                        
                    }.padding(12).frame(width: 187, alignment: .leading).background(.white)           .cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 0, y: 4).overlay(
                        RoundedRectangle(cornerRadius: 12)
                          .inset(by: 0.5)
                          .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                      )
                    
                }
            }.foregroundColor(Color(red: 0.24, green: 0.27, blue: 0.4))
            
            Spacer() /// forces content to top
        }.padding(.horizontal, 20).padding(.vertical, 16)
            .navigationBarBackButtonHidden(true)

    }
}

#Preview {
    CatalogueView()
}
