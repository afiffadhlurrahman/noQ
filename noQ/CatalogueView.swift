//
//  CatalogueView.swift
//  noQ
//
//  Created by Sigit Academy on 28/03/24.
//

import SwiftUI

struct Constants {
    static let colorsBaseBlack: Color = .black
    static let borderRadiusDEFAULT: CGFloat = 4
}

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

struct CatalogueView: View {
    @Environment(\.dismiss) var dismiss
    @State var toHomeView = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                HStack{
                    Image(systemName: "chevron.left").font(.system(size: 24))                .onTapGesture(count: 1) {
                        toHomeView.toggle()
                    }
                    Spacer()
                    // Sub-Header/S3
                    Text("Catalogue")
                        .font(
                            Font.custom("Poppins-SemiBold", size: 20)
                        )
                        .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                    Spacer()
                }
                .padding(.bottom, 11)
                HStack{
                    HStack{
                        VStack(spacing: 5.0){
                            // Body/B5
                            Text("Store location")
                                .font(Font.custom("Poppins-Regular", size: 10))
                                .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            HStack(spacing: 8){
                                Text("Lawson Syahdan")
                                    .font(.custom("Poppins-Regular", size: 16))
                                    .fontWeight(.bold)
                                Image(systemName: "chevron.down")                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                    }.frame(maxWidth: .infinity)
                    Image(systemName: "basket")
                }
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
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                        .clipShape(Circle())
                }
                
                ScrollView(.horizontal) {
                    HStack(spacing: 12) {
                        ForEach(categories) {category in
                            Catalogue_CategoryCardView(label: category.label, discount:category.discount)
                        }
                    }
                }.foregroundColor(Color(red: 0.24, green: 0.27, blue: 0.4))
                
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
                }.foregroundColor(Color(red: 0.24, green: 0.27, blue: 0.4))
            }
            .padding(.horizontal, 20).padding(.vertical, 16)
            .navigationDestination(isPresented: $toHomeView){
                    HomeView()
            }
        }.navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    CatalogueView()
}
