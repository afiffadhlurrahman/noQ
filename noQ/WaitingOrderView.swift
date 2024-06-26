//
//  WaitingOrderView.swift
//  noQ
//
//  Created by Dinda Ayu Syafitri on 02/04/24.
//

import SwiftUI

struct WaitingOrderView: View {
    @Environment(\.dismiss) var backbutton
    @State private var hasTimeElapsed = false
    @State private var timeRe = 5
    
    private func delay() async {
        try? await Task.sleep(nanoseconds: 1_000_000_000)
        timeRe -= 1
        if timeRe > 0 {
           await delay()
        }else{
            hasTimeElapsed.toggle()
        }
    }
    
    var body: some View {
        NavigationStack{
            VStack {
                ZStack(alignment: .topLeading) {
                    GifImage("animasi lari stretch_1")
                    Text("Back")
                        .font(Font.custom("Poppins-Semibold", size: 14))
                        .foregroundStyle(.white)
                        .onTapGesture (perform: {
                            backbutton()
                        })
                        .padding(.horizontal, 20)
                }
                .background(Color(red: 0.19, green: 0.82, blue: 0.94))

                ScrollView {
                    VStack (spacing: 24){
                        VStack {
                            //Order Time
                            VStack {
                                HStack{
                                    Text ("Your order will be ready in")
                                        .font(Font.custom("Poppins-Semibold", size: 14))

                                    Spacer()
                                    Text("\(timeRe) s")
                                        .font(Font.custom("Poppins-Semibold", size: 24))
                                        .foregroundColor(Color(red: 0.29, green: 0.8, blue: 0.89))
                                }
                            }
                        }
                            //End Order Time


                        VStack(spacing: 12){
                            //Order Status Start
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Order #4231")
                                        .font(Font.custom("Poppins-SemiBold", size: 20))
                                        .foregroundStyle(Color(red: 0.22, green: 0.25, blue: 0.26))

                                    Text("26 Mar 2024 - 02.30 PM")
                                        .font(Font.custom("Poppins-Regular", size: 12))
                                        .foregroundStyle(Color(red: 0.33, green: 0.34, blue: 0.35))
                                }
                                Spacer()
                                Text("In Progress")
                                    .font(Font.custom("Poppins-SemiBold", size: 16))
                                    .foregroundStyle(Color(red: 1, green: 0.76, blue: 0.29))
                                    .padding(.horizontal,12)
                                    .padding(.vertical,8)
                                    .background(Color(red: 1, green: 0.96, blue: 0.89))
                                    .cornerRadius(999)

                            }
                            // End Order Status

                            //Location Start
                            HStack {
                                Image(systemName: "mappin")
                                    .foregroundStyle(Color(red: 1, green: 0.76, blue: 0.29))
                                Text("Lawson Syahdan")
                                    .font(Font.custom("Poppins-Regular", size: 14))
                                    .foregroundStyle(Color(red: 0.22, green: 0.25, blue: 0.26))
                                Spacer()
                            }
                            //End Location
                        }

                        //                    Complete Order Button
                        Button(action: {
                        }) {
                            HStack(alignment: .center, spacing: 8) {
                                Text("Complete Order")
                                    .font(Font.custom("Poppins-SemiBold", size: 16))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                            }
                            .padding(.horizontal, 32)
                            .padding(.vertical, 16)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color(red: 0.8, green: 0.82, blue: 0.84))
                            .cornerRadius(14)
                        }
                        //End Complete Order Button

                        //total items start
                        HStack {
                            Text("5 Items")
                                .font(Font.custom("Poppins-SemiBold", size: 14))
                            Spacer()
                            Text("Rp250,000")
                                .font(Font.custom("Poppins-SemiBold", size: 20))

                        }
                        //end total items

                        VStack {
                            Checkout_ProductCardView(imgSrc: "pocky", productName: "Pocky", price: "10.800", qty: 2)

                            Checkout_ProductCardView(imgSrc: "pocky", productName: "Pocky", price: "10.800", qty: 2)

                            Checkout_ProductCardView(imgSrc: "pocky", productName: "Pocky", price: "10.800", qty: 1)
                        }

                        HStack(spacing:12) {
                            Image(systemName: "basket")
                                .foregroundStyle(Color(red: 0.96, green: 0.25, blue: 0.37))
                            Text("Cancel Order")
                                .font(Font.custom("Poppins-SemiBold", size: 14))
                                .foregroundStyle(Color(red: 0.96, green: 0.25, blue: 0.37))
                        }
                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical,0)
                .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .navigationDestination(isPresented: $hasTimeElapsed){
                    ReadyToPickUpView()
                }
            }.navigationBarBackButtonHidden(true)
        }.task {
            await delay()
        }

    }
}

#Preview {
    WaitingOrderView()
}
