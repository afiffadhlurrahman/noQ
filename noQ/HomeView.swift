//
//  HomeView.swift
//  noQ
//
//  Created by Dinda Ayu Syafitri on 31/03/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("homeHero2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth:.infinity,alignment: .center)
                        .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                    ScrollView {
                        ScrollView(.horizontal){
                            HStack(spacing: 16){
                                RoundedRectangle(cornerRadius: 4)

                                    .stroke(Color(red: 205/255, green:209/255, blue:214/255), lineWidth: 1)
                                    .frame(width: 290, height: 127)
                                    .padding(3)
                                    .overlay(
                                        Image("banner-1")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                    )

                                RoundedRectangle(cornerRadius: 4)

                                    .stroke(Color(red: 205/255, green:209/255, blue:214/255), lineWidth: 1)
                                    .foregroundColor(.white)
                                    .frame(width: 290, height: 127)
                                    .padding(3)
                                    .overlay(
                                        Image("banner-2")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                    )
                            }

                        }
                        .frame(height: .infinity)
                        .padding(.top, 60)

                        VStack(alignment: .leading, spacing: 12) {
                            Text("Category")
                                .font(Font.custom("poppins-semibold", size: 16))
                                .padding(.top, 16)
                            ScrollView(.horizontal) {
                                HStack(spacing: 16) {
                                    RoundedRectangle(cornerRadius: 12)
                                        .foregroundColor(.white)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 86)
                                        .overlay(
                                            VStack {
                                                Image("fried-chicken")
                                                Text("Fresh")
                                                    .font(Font.custom("poppins", size: 12))
                                            }
                                        ).overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                            .inset(by: 0.5)
                                            .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)

                                            )

                                    RoundedRectangle(cornerRadius: 12)
                                        .foregroundColor(.white)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 86)
                                        .overlay(
                                            VStack {
                                                Image("snack")
                                                Text("Snack")
                                                    .font(Font.custom("poppins", size: 12))
                                            }

                                        )
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                            .inset(by: 0.5)
                                            .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)

                                            )

                                    RoundedRectangle(cornerRadius: 12)
                                        .foregroundColor(.white)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 86)
                                        .overlay(
                                            VStack {
                                                Image("water")
                                                Text("Drink")
                                                    .font(Font.custom("poppins", size: 12))
                                            }

                                        )
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                            .inset(by: 0.5)
                                            .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)

                                            )

                                    RoundedRectangle(cornerRadius: 12)
                                        .foregroundColor(.white)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 86)
                                        .overlay(
                                            VStack {
                                                Image("patch")
                                                Text("Other")
                                                    .font(Font.custom("poppins", size: 12))
                                            }
                                        )
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                            .inset(by: 0.5)
                                            .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)

                                            )

                                }

                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)


                        VStack(alignment: .leading, spacing: 12) {
                            Text("Don't Miss Out")
                                .font(Font.custom("poppins-semibold", size: 16))
                                .padding(.top, 16)

                            VStack {
                                HStack(spacing:12) {
                                    VStack(alignment: .leading, spacing: 6){
                                        Image("pocky").resizable()
                                            .frame(width: 100.0, height: 100).padding(.horizontal, 28.5)
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

                                    }.padding(12).frame(width: 175, alignment: .leading).background(.white)           .cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 0, y: 4).overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .inset(by: 0.5)
                                            .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                                    )

                                    VStack(alignment: .leading, spacing: 6){
                                        Image("pocky").resizable()
                                            .frame(width: 100.0, height: 100).padding(.horizontal, 28.5)
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

                                    }.padding(12).frame(width: 175, alignment: .leading).background(.white)           .cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 0, y: 4).overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .inset(by: 0.5)
                                            .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                                    )
                                }
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)

                                HStack(spacing:12) {
                                    VStack(alignment: .leading, spacing: 6){
                                        Image("pocky").resizable()
                                            .frame(width: 100.0, height: 100).padding(.horizontal, 28.5)
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

                                    }.padding(12).frame(width: 175, alignment: .leading).background(.white)           .cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 0, y: 4).overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .inset(by: 0.5)
                                            .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                                    )

                                    VStack(alignment: .leading, spacing: 6){
                                        Image("pocky").resizable()
                                            .frame(width: 100.0, height: 100).padding(.horizontal, 28.5)
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

                                    }.padding(12).frame(width: 175, alignment: .leading).background(.white)           .cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 0, y: 4).overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .inset(by: 0.5)
                                            .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
                                    )
                                }
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            }}
                    }
                    .padding(.horizontal,20)
                }
                .background(Color(red: 0.98, green: 0.98, blue: 1))

                VStack {
                    VStack(alignment: .leading, spacing: 4){
                        HStack(spacing: 4){
                            Image(systemName: "storefront").font(.system(size: 16))
                            Text("Lawson Syahdan").font( Font.custom("poppins",size:10))
                        }.foregroundColor(Color(red:84/255, green:86/255, blue:88/255))
                        HStack(spacing: 8) {
                            Text("Lawson Syahdan").font(Font.custom("Poppins", size: 16)).fontWeight(.bold)
                            Image(systemName: "chevron.down").font(.system(size: 16))
                        }

                    }
                    .padding(12)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
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
                        NavigationLink(destination: CatalogueView()) {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                                .padding(10)
                                .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                                .clipShape(Circle())
                        }

                    }.padding(16).background(Color(red: 0.93, green: 0.98, blue: 0.99)).cornerRadius(16)
                        .offset(y:-130)




                    Spacer()
                }
                .padding(.horizontal, 20)


            }
            .navigationBarBackButtonHidden(true)

        }

    }

}

#Preview {
    HomeView()
}
