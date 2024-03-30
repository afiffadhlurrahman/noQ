//
//  Basket-ProductCardView.swift
//  noQ
//
//  Created by Dinda Ayu Syafitri on 30/03/24.
//

import SwiftUI

struct Basket_ProductCardView: View {
    
    var imgSrc: String
    var productName: String
    var disc: String
    var initPrice: String
    var finPrice: String
    var qty: Int
    
    var body: some View {
        
        HStack(alignment: .center,spacing:16){
            Image(imgSrc)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 64)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(productName)
                    .font(Font.custom("Poppins-SemiBold", size: 14))
                
                HStack(spacing: 8, content: {
                    Text("\(disc) Off")                    .font(Font.custom("poppins", size:12))
                        .foregroundStyle(Color.white)
                        .padding(.horizontal, 4)
                        .padding(.vertical, 2)
                        .background(Color(red:244/255,green:63/255,blue:94/255))
                        .cornerRadius(4)
                    
                    
                    Text("Rp\(initPrice)")
                        .font(Font.custom("poppins", size:14))
                }
                )
                
                HStack(alignment: .center){
                    Text("Rp\(finPrice)")
                        .font(Font.custom("poppins-semiBold", size:16))
                    Spacer()
                    HStack {
                        Image(systemName: "plus.circle.fill").font(.system(size: 24))
                            .foregroundStyle(Color(red: 255/255, green: 195/255, blue: 75/255))
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(red: 205/255, green:209/255, blue:214/255), lineWidth: 1)
                            .aspectRatio(contentMode: .fit)
                            .padding(3)
                            .overlay(
                                Text("\(qty)")
                                    .font(Font.custom("poppins", size:12))
                                    .foregroundColor(.black)
                            )
                        
                        Image(systemName: "minus.circle.fill")
                            .font(.system(size: 24))
                            .foregroundStyle(Color(red: 255/255, green: 195/255, blue: 75/255))
                    }.aspectRatio(contentMode: .fit)
                }
            }
            
            
        }.padding(12).frame(maxWidth: .infinity, alignment: .leading).background(.white)           .cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 0, y: 4).overlay(
            RoundedRectangle(cornerRadius: 12)
                .inset(by: 0.5)
                .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
        )
    }
}

#Preview {
    Basket_ProductCardView(
        imgSrc: "pocky",
        productName: "Pocky Chocolate",
        disc: "35%",
        initPrice: "20,800",
        finPrice: "10,800",
        qty:2
    )
}
