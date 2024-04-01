//
//  ProductDetailView.swift
//  noQ
//
//  Created by Sigit Academy on 01/04/24.
//

import SwiftUI

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

struct ProductDetailView: View {
    var imgSrc: String
    var productName: String
    var disc: String
    var initPrice: String
    var finPrice: String
    
    @State private var isShowingSheet = false
    @State private var isAddToBasket = true
    
    func handleTap(isAddToBasket: Bool) {
        self.isAddToBasket = isAddToBasket
        self.isShowingSheet.toggle()
    }
    
    @Environment(\.dismiss) var dismiss

    var body: some View {

        Header(title: "Product Detail").padding(.horizontal, 20).padding(.vertical, 16)
        
        ScrollView(.vertical) {
            VStack(spacing:16){
                Image(imgSrc)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:300, alignment: .center)
                    .clipped()
                
                Text(productName)
                    .font(
                        Font.custom("Poppins-SemiBold", size: 20)
                    )
                    .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26)).frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal,20)
                
                Text("Blending the iconic chocolate sandwich cookie with a delightful strawberry-flavored filling")
                    .font(Font.custom("Poppins", size: 12))
                    .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26)).frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal,20)
                
                HStack{
                    HStack(alignment: .top) {
                        Text("\(disc) Off")
                            .font(
                                Font.custom("Poppins-Regular", size: 12)
                                    .weight(.medium)
                            )
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 4)
                    .background(Color(red: 0.96, green: 0.25, blue: 0.37))
                    .cornerRadius(Constants.borderRadiusDEFAULT)
                    
                    Text("Rp\(initPrice)")
                        .font(Font.custom("Poppins-Regular", size: 14))
                        .strikethrough()
                        .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).padding(.horizontal,20)
                
                Text("Rp\(finPrice)")
                    .font(
                        Font.custom("Poppins-SemiBold", size: 14)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26)).frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal,20)
                
                HStack{
                    HStack(alignment: .center, spacing: 8) { // Body/B4
                        Text("Checkout")
                            .font(Font.custom("Poppins-SemiBold", size: 16))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                    }.onTapGesture(count: 1) {
                        self.handleTap(isAddToBasket: false)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 0.29, green: 0.8, blue: 0.89))
                    .cornerRadius(8)
                    
                    HStack(alignment: .center, spacing: 8) { Image(systemName: "basket").foregroundColor(.white)
                    }
                    .padding(.horizontal, 16).padding(.vertical, 10)
                    .background(Color(red: 1, green: 0.76, blue: 0.29))
                    .cornerRadius(8)
                    .onTapGesture(count: 1) {
                        self.handleTap(isAddToBasket: true)
                    }
                }.padding(.horizontal,20)
                
                Text("Similar Product")
                    .font(
                        Font.custom("Poppins-SemiBold", size: 16)
                    )
                    .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26))
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).padding(.horizontal,20)
                
                ForEach(products.indices,id: \.self) { i in
                    if i.isMultiple(of: 2) {
                        let isIndexValid = products.indices.contains(i+1)
                        
                        HStack(alignment: .top, spacing: 16){
                            Catalogue_ProductCardView(imgSrc: products[i].imgSrc, productName: products[i].productName, disc: products[i].disc, initPrice: products[i].initPrice, finPrice: products[i].finPrice)
                            if isIndexValid {
                                Catalogue_ProductCardView(imgSrc: products[i+1].imgSrc, productName: products[i+1].productName, disc: products[i+1].disc, initPrice: products[i+1].initPrice, finPrice: products[i+1].finPrice)
                            }
                        }
                    }
                }
            }.sheet(isPresented: $isShowingSheet) {
                VStack(alignment: .leading, spacing: 16) {
                    Chart(
                        imgSrc: self.imgSrc,
                        productName: self.productName,
                        disc: self.disc,
                        initPrice: self.initPrice,
                        finPrice: self.finPrice,
                        qty: 0,
                        isAddToBasket: self.$isAddToBasket)
                }  .presentationDetents([.fraction(0.30)])
                    .presentationCompactAdaptation(.none)
                    .presentationDragIndicator(.visible)
                    .padding(.top, 16)
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ProductDetailView(
        imgSrc: "pocky",
        productName: "Oreo Strawberry 160gr",
        disc: "36%",
        initPrice: "20,800",
        finPrice: "10,800"
    )
}
