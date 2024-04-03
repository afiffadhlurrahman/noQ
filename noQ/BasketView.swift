//
//  BasketView.swift
//  noQ
//
//  Created by Dinda Ayu Syafitri on 30/03/24.
//

import SwiftUI

struct CustomDivider: View {
    var color: Color
    var height: CGFloat

    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .frame(height: height)
    }
}
struct BasketView: View {
    var body: some View {

        VStack(spacing: 19) {
            HStack{

                BackButton()
                Spacer()
                // Sub-Header/S3
                Text("Sigit's Basket")
                    .font(
                        Font.custom("Poppins-SemiBold", size: 20)
                    )
                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                Spacer()
            }

            VStack(alignment: .leading, spacing: 4){
                HStack(spacing: 4){
                    Image(systemName: "storefront").font(.system(size: 16))
                    Text("Lawson Syahdan").font( Font.custom("Poppins-Regular",size:10))
                }.foregroundColor(Color(red:84/255, green:86/255, blue:88/255))
                HStack(spacing: 8) {
                    Text("Lawson Syahdan").font(Font.custom("Poppins-Regular", size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Image(systemName: "chevron.down").font(.system(size: 16))
                }

            }
            .padding(12)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(red: 255/255, green:246/255, blue:228/255))
            .cornerRadius(8)

            Basket_ProductCardView(
                imgSrc: "pocky",
                productName: "Pocky Chocolate",
                disc: "35%",
                initPrice: "20,800",
                finPrice: "10,800",
                qty:2
            )

            Basket_ProductCardView(
                imgSrc: "oreo",
                productName: "Oreo Strawberry",
                disc: "35%",
                initPrice: "20,800",
                finPrice: "10,800",
                qty:1
            )

            Basket_ProductCardView(
                imgSrc: "onigiri",
                productName: "Onigiri Spicy Salmon",
                disc: "35%",
                initPrice: "20,800",
                finPrice: "10,800",
                qty:2
            )


            Spacer()

            VStack(spacing: 16) {
                CustomDivider(color: Color(red: 199/255, green: 239/255, blue: 246/255), height: 2)

                HStack{
                    Text("4 Items")
                        .font(Font.custom("Poppins-SemiBold", size:14))
                    Spacer()
                    Text("Rp30,500")
                        .font(Font.custom("Poppins-SemiBold", size:20))
                }

                PaymentOptModalView()

            }
        }
        .padding(.horizontal, 20)
        .navigationBarBackButtonHidden(true)


    }
}

#Preview {
    BasketView()
}

