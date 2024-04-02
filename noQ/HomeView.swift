//
//  HomeView.swift
//  noQ
//
//  Created by Dinda Ayu Syafitri on 31/03/24.
//

import SwiftUI

struct HomeView: View {
    @State private var searchKeyword: String = ""
    
    private struct Product: Identifiable {
        let imgSrc: String
        let productName: String
        let disc: String
        let initPrice: String
        let finPrice: String
        var id: String { productName }
    }

    private let products: [Product] = [
        Product(
            imgSrc: "oreo",
            productName: "Oreo Strawberry 160gr",
            disc: "36%",
            initPrice: "20,800",
            finPrice: "10,800"
        ),
        Product(
            imgSrc: "pocky",
            productName: "Pocky Chocolate 80gr",
            disc: "36%",
            initPrice: "20,800",
            finPrice: "10,800"
        ),
        Product(
            imgSrc: "oreo",
            productName: "Oreo Strawberry 160gr",
            disc: "36%",
            initPrice: "20,800",
            finPrice: "10,800"
        ),
        Product(
            imgSrc: "pocky",
            productName: "Pocky Chocolate 80gr",
            disc: "36%",
            initPrice: "20,800",
            finPrice: "10,800"
        ),
        Product(
            imgSrc: "oreo",
            productName: "Oreo Strawberry 160gr",
            disc: "36%",
            initPrice: "20,800",
            finPrice: "10,800"
        ),
        Product(
            imgSrc: "pocky",
            productName: "Pocky Chocolate 80gr",
            disc: "36%",
            initPrice: "20,800",
            finPrice: "10,800"
        )
    ]

    private struct Category: Identifiable {
        let label: String
        let discount: Bool
        var id: String { label }
    }

    private let categories: [Category] = [
        Category(label: "% Discount", discount:  true),
        Category(label: "Fresh", discount:  false),
        Category(label: "Snacks", discount:  false),
        Category(label: "Drinks", discount:  false),
        Category(label: "Micin", discount:  false)
    ]
    var body: some View {
        NavigationStack {
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
                        .padding(.top, 60)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Category")
                                .font(Font.custom("poppins-semibold", size: 16))
                                .padding(.top, 16)
                            ScrollView(.horizontal) {
                                HStack(spacing: 16) {
                                    CategoryCardView(
                                        imgSrc: "fried-chicken",
                                        category: "Fresh"
                                    )
                                    CategoryCardView(
                                        imgSrc: "snack",
                                        category: "Snack"
                                    )
                                    CategoryCardView(
                                        imgSrc: "water",
                                        category: "Drink"
                                    )
                                    CategoryCardView(
                                        imgSrc: "patch",
                                        category: "Other"
                                    )
                                    
                                    
                                }
                                
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Don't Miss Out")
                                .font(Font.custom("poppins-semibold", size: 16))
                                .padding(.top, 16)
                            
                            ScrollView() {
                                ForEach(products.indices,id: \.self) { i in
                                    if i.isMultiple(of: 2) {
                                        let isIndexValid = products.indices.contains(i+1)
                                        
                                        HStack(alignment: .top, spacing: 8){
                                            
                                            Catalogue_ProductCardView(imgSrc: products[i].imgSrc, productName: products[i].productName, disc: products[i].disc, initPrice: products[i].initPrice, finPrice: products[i].finPrice)
                                            
                                            if isIndexValid {
                                                Catalogue_ProductCardView(imgSrc: products[i+1].imgSrc, productName: products[i+1].productName, disc: products[i+1].disc, initPrice: products[i+1].initPrice, finPrice: products[i+1].finPrice)
                                            }
                                        }
                                    }
                                }
                            }.foregroundColor(Color(red: 0.24, green: 0.27, blue: 0.4))}
                    }
                    .padding(.horizontal,20)
                }
                .background(Color(red: 0.98, green: 0.98, blue: 1))
                
                VStack {
                    HStack {
                        VStack(alignment: .leading, spacing: 4){
                            HStack(spacing: 4){
                                Image(systemName: "storefront").font(.system(size: 16))
                                Text("Lawson Syahdan").font( Font.custom("poppins",size:10))
                            }.foregroundColor(.white)
                            HStack(spacing: 8) {
                                Text("Lawson Syahdan").font(Font.custom("Poppins", size: 16)).fontWeight(.bold)
                                Image(systemName: "chevron.down").font(.system(size: 16))
                            }.foregroundColor(.white)
                            
                        }
                        .padding(12)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                            NavigationLink(destination: BasketView()) {
                                ZStack {
                                    Image(systemName: "basket")
                                        .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                                        .frame(width: 20, height: 20)
                                        .padding(6)
                                        .background(.white)
                                        .cornerRadius(100)
                                    Circle().frame(width: 8).foregroundStyle(Color(red: 1, green: 0.42, blue: 0)).offset(x:8, y:-3)
                                }
                            }
                            
                            NavigationLink(destination: OrderHistory()) {
                                Image(systemName: "doc.plaintext")
                                    .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                                    .frame(width: 20, height: 20)
                                    .padding(6)
                                    .background(.white)
                                    .cornerRadius(100)
                            }
                            Image(systemName: "person.crop.circle")
                                .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                                .frame(width: 20, height: 20)
                                .padding(6)
                                .background(.white)
                                .cornerRadius(100)
                            
                        }
                    }
                    
                    Spacer()
                    
                    HStack{
                        
                        TextField("",
                                  text:$searchKeyword
                        )
                        .font(Font.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Constants.colorsBaseBlack)
                        .frame(maxWidth: .infinity, alignment: .leading)
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
