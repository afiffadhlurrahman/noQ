//
//  OrderDoneView.swift
//  noQ
//
//  Created by Dinda Ayu Syafitri on 02/04/24.
//

import SwiftUI

struct OrderDoneView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("orderDone1")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)

                VStack (spacing: 24){
                    VStack{
                        Text("Thank you for")
                            .font(Font.custom("Poppins", size: 28).weight(.heavy))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                        Text("shopping with NoQ")
                            .font(Font.custom("Poppins", size: 28).weight(.heavy))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                    }
                    .padding(.top, 70)

                    NavigationLink(destination: CatalogueView()) {
                        HStack {
                            Image(systemName: "menucard")
                            Text("Back to Catalogue")
                                .font(Font.custom("Poppins-SemiBold", size: 16))
                        }
                        .padding(.vertical, 16)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                        .background(Color(red: 1, green: 0.76, blue: 0.29))
                        .cornerRadius(14)
                        .padding(.horizontal, 20)
                        .foregroundColor(.white)
                    }
                    Spacer()
                }
            }
            .background(Color(red: 0.29, green: 0.8, blue: 0.89))
        }
    }
}

#Preview {
    OrderDoneView()
}
