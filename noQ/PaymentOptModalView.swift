//
//  PaymentOptModalView.swift
//  noQ
//
//  Created by Dinda Ayu Syafitri on 30/03/24.
//

import SwiftUI

struct PaymentOptModalView: View {
    @State private var isShowingSheet = false
    var body: some View {
        Button(action: {
            isShowingSheet.toggle()
        }) {
            HStack(alignment: .center, spacing: 8) { // Body/B4
                Text("Pay")
                    .font(Font.custom("Poppins-semibold", size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color(red: 0.29, green: 0.8, blue: 0.89))
            .cornerRadius(14)
        }
        .sheet(isPresented: $isShowingSheet
        ) {
            VStack(alignment: .leading, spacing: 16) {
                Text("Payment Method")
                    .font(Font.custom("Poppins-SemiBold", size: 24))
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                
                Text("E-Wallet")
                    .font(Font.custom("Poppins-SemiBold", size: 16))
                
                HStack(spacing: 12){
                    Image("apple-pay")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 23)
                    Text("Apple Pay").font(Font.custom("poppins", size: 16))
                    Spacer()
                }
                HStack(spacing: 12){
                    Image("gopay")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 23)
                    Text("Gopay").font(Font.custom("poppins", size: 16))
                    Spacer()
                }
                HStack(spacing: 12){
                    Image("dana")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 23)
                    Text("Dana").font(Font.custom("poppins", size: 16))
                    Spacer()
                } 
                
                
                Text("Virtual Account")
                    .font(Font.custom("Poppins-SemiBold", size: 16))
                
                HStack(spacing: 12){
                    Image("bri")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 23)
                    Text("BRI").font(Font.custom("poppins", size: 16))
                    Spacer()
                }
                HStack(spacing: 12){
                    Image("bca")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 23)
                    Text("BCA").font(Font.custom("poppins", size: 16))
                    Spacer()
                }
                HStack(spacing: 12){
                    Image("bni")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 23)
                    Text("BNI").font(Font.custom("poppins", size: 16))
                    Spacer()
                }
                
                 Text("Cards")
                    .font(Font.custom("Poppins-SemiBold", size: 16))
                
                HStack(spacing: 12){
                    Image("visa")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 23)
                    Text("Visa").font(Font.custom("poppins", size: 16))
                    Spacer()
                }
                HStack(spacing: 12){
                    Image("mastercard")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 23)
                    Text("Mastercard").font(Font.custom("poppins", size: 16))
                    Spacer()
                }
            
                
            }  .presentationDetents([.fraction(0.70)])
                .presentationCompactAdaptation(.none)
                .presentationDragIndicator(.visible)
                .padding(.horizontal, 20)
                .padding(.top, 16)
        }
    }
    
    
}

#Preview {
    PaymentOptModalView()
}