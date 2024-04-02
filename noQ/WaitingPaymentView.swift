//
//  WaitingPaymentView.swift
//  noQ
//
//  Created by Dinda Ayu Syafitri on 01/04/24.
//

import SwiftUI
import AVKit

struct WaitingPaymentView: View {
    @Environment(\.dismiss) var backbutton

    var videoURL: URL? {
        Bundle.main.url(forResource: "jam", withExtension: "mp4")
    }

    let externalVideoURL = URL(string: "https://www.example.com/path/to/your/video.mp4")

    var body: some View {
        NavigationView{
            VStack {
                ZStack(alignment: .topLeading) {
                    GifImage("jam")
                    Text("Back")
                        .font(Font.custom("Poppins-Semibold", size: 14))
                        .foregroundStyle(.white)
                        .onTapGesture (perform: {
                            backbutton()
                        })
                        .padding(.horizontal, 20)
                }
                .background(Color(red: 0.96, green: 0.83, blue: 0.51))

                ScrollView {
                    VStack (spacing: 24){
                        VStack {
                            //Payment Time
                            VStack {
                                HStack{
                                    Text ("Complete your payment within")
                                        .font(Font.custom("Poppins-Semibold", size: 14))

                                    Spacer()
                                    Text("10m 2s")
                                        .font(Font.custom("Poppins-Semibold", size: 24))
                                        .foregroundColor(Color(red: 0.29, green: 0.8, blue: 0.89))
                                }
                            }
                            //End Payment Time

                            //Payment Method Start
                            HStack(spacing: 12) {
                                Image("apple-pay")
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 24)
                                Text("Apple Pay")
                                    .font(Font.custom("Poppins", size: 16))
                                    .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))

                                Spacer()
                            }
                            //End Payment Method
                        }

                        VStack(spacing: 12){
                            //Order Status Start
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Order #4231")
                                        .font(Font.custom("poppins-semibold", size: 20))
                                        .foregroundStyle(Color(red: 0.22, green: 0.25, blue: 0.26))

                                    Text("26 Mar 2024 - 02.30 PM")
                                        .font(Font.custom("poppins", size: 12))
                                        .foregroundStyle(Color(red: 0.33, green: 0.34, blue: 0.35))
                                }
                                Spacer()
                                Text("Waiting for Payment")
                                    .font(Font.custom("poppins-semibold", size: 16))
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
                                    .font(Font.custom("poppins", size: 14))
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
                                    .font(Font.custom("Poppins-semibold", size: 16))
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
                                .font(Font.custom("poppins-semibold", size: 14))
                            Spacer()
                            Text("Rp250,000")
                                .font(Font.custom("poppins-semibold", size: 20))

                        }
                        //end total items

                        VStack {
                            Checkout_ProductCardView(imgSrc: "pocky", productName: "Pocky", price: "10.800", qty: 2)

                            Checkout_ProductCardView(imgSrc: "pocky", productName: "Pocky", price: "10.800", qty: 2)

                            Checkout_ProductCardView(imgSrc: "pocky", productName: "Pocky", price: "10.800", qty: 1)
                        }

                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical,0)
                .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }
        }

    }
}

#Preview {
    WaitingPaymentView()
}
