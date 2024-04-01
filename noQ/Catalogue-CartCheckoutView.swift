//
//  Basket-ProductCardView.swift
//  noQ
//
//  Created by Dinda Ayu Syafitri on 30/03/24.
//

import SwiftUI

struct Catalogue_CartCheckoutView: View {
    
    var imgSrc: String
    var productName: String
    var disc: String
    var initPrice: String
    var finPrice: String
    @State var qty: Int = 0
    var isAddToBasket: Bool
    
    var body: some View {
        
        
        VStack{
            HStack(alignment: .center,spacing:16){
                Image(imgSrc)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 72)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(productName)
                        .font(Font.custom("Poppins-SemiBold", size: 20))
                    
                    HStack(spacing: 8, content: {
                        Text("\(disc) Off")                    .font(Font.custom("Poppins-Regular", size:10))
                            .foregroundStyle(Color.white)
                            .padding(.horizontal, 4)
                            .padding(.vertical, 2)
                            .background(Color(red:244/255,green:63/255,blue:94/255))
                            .cornerRadius(4)
                        
                        
                        Text("Rp\(initPrice)")
                            .font(Font.custom("Poppins-Regular", size:12))
                            .foregroundStyle(Color(red:176/255, green:180/255, blue:184/255))
                    }
                    )
                    Text("Rp\(finPrice)")
                        .font(Font.custom("Poppins-SemiBold", size:16))
                }
                
                
            }.padding(12).frame(maxWidth: .infinity, alignment: .leading).background(.white)
            
            
            HStack(alignment: .center){
                let minusColor: Color = qty > 0 ? Color(red: 255/255, green: 195/255, blue: 75/255) : Color(red: 0.8, green: 0.82, blue: 0.84)
                
                Text("Item Quantity")
                    .font(Font.custom("Poppins-SemiBold", size:16))
                Spacer()
                HStack {
                    Image(systemName: "minus.circle.fill").font(.system(size: 24))
                        .foregroundStyle(minusColor).onTapGesture {
                            if self.qty > 0 {
                                self.qty -= 1
                            }
                        }
                    HStack(alignment: .center, spacing: 10) {
                        Text("\(qty)")
                            .font(Font.custom("Poppins-Regular", size:12))
                            .foregroundColor(.black)
                    }.padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(.white)
                        .cornerRadius(Constants.borderRadiusDEFAULT)
                        .overlay(
                            RoundedRectangle(cornerRadius: Constants.borderRadiusDEFAULT)
                                .inset(by: 0.5)
                                .stroke(Color(red: 0.8, green: 0.82, blue: 0.84), lineWidth: 1)
                        )
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 24))
                        .foregroundStyle(Color(red: 255/255, green: 195/255, blue: 75/255)).onTapGesture {
                            self.qty += 1
                        }
                }.aspectRatio(contentMode: .fit)
            }
            
            let text = isAddToBasket ? "Add to Basket" : "Checkout"
            let icon = isAddToBasket ? "basket" : "chevron.right"
            
            HStack(alignment: .center, spacing: 16) {
                // Sub-Header/S4
                
                Image(systemName: icon).foregroundColor(.white)
                Text(text)
                    .font(
                        Font.custom("Poppins-SemiBold", size: 16)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }.environment(\.layoutDirection, isAddToBasket ? .leftToRight : .rightToLeft)
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                .cornerRadius(14)
        }.padding(.horizontal, 20)
            .padding(.vertical, 40)
        
    }
}

#Preview {
    Catalogue_CartCheckoutView(
        imgSrc: "pocky",
        productName: "Pocky Chocolate",
        disc: "35%",
        initPrice: "20,800",
        finPrice: "10,800",
        qty:0,
        isAddToBasket: true
    )
}
