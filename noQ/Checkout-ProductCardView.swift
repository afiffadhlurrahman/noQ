//
//  Checkout-ProductCardView.swift
//  noQ
//
//  Created by Dinda Ayu Syafitri on 02/04/24.
//

import SwiftUI

struct Checkout_ProductCardView: View {
    var imgSrc: String
    var productName: String
    var price: String
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

                HStack(alignment: .center){
                    Text("Rp\(price)")
                        .font(Font.custom("Poppins-semiBold", size:16))
                    Spacer()
                    Text("x\(qty)")
                        .font(Font.custom("Poppins-semiBold", size:16))
                    Spacer()
                    Text("Rp 20.800")
                        .font(Font.custom("Poppins-semiBold", size:16))
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
    Checkout_ProductCardView(
        imgSrc: "pocky",
        productName: "Pocky Chocolate",
        price: "10,800",
        qty:2
    )
}
