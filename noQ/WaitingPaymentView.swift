//
//  WaitingPaymentView.swift
//  noQ
//
//  Created by Dinda Ayu Syafitri on 01/04/24.
//

import SwiftUI
import AVKit

struct WaitingPaymentView: View {
//    var animationURL: URL? {
//          Bundle.main.url(forResource: "animasi-jam", withExtension: "MP4")
//      }



    var body: some View {
        NavigationView{
            VStack {
//                if let url = animationURL {
//                                  VideoPlayer(player: AVPlayer(url: url))
//                              }

                Text("Animasi")
                Header(title: "")
                ScrollView {
                    VStack (spacing: 24){
                        VStack {
                            //Payment Time
                            VStack {
                                HStack{
                                    Text ("Complete your payment within")
                                    Spacer()
                                    Text("10m 2s")
                                }
                            }
                            //End Payment Time

                            //Payment Method Start
                            HStack {
                                Image("apple-pay")
                                Text("Apple Pay")
                                Spacer()
                            }
                            //End Payment Method
                        }

                        VStack {
                            //Order Status Start
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Order #4231")
                                    Text("26 Mar 2024 - 02.30 PM")
                                }

                                Text("Waiting for Payment")
                            }
                            // End Order Status

                            //Location Start
                            HStack {
                                Image(systemName: "mappin")
                                Text("Lawson Syahdan")
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
    //                    End Complete Order Button


                    }
                }
                Spacer()
            }
            .padding(.horizontal, 20)
        }

    }
}

#Preview {
    WaitingPaymentView()
}
