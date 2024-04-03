//
//  Catalogue-ProductCardView.swift
//  noQ
//
//  Created by Sigit Academy on 31/03/24.
//

import SwiftUI

struct Chart : View {
    var imgSrc: String
    var productName: String
    var disc: String
    var initPrice: String
    var finPrice: String
    var qty: Int
    
    @Binding var isAddToBasket: Bool
    @Binding var isActive: Bool
    
    var body: some View {
        return Catalogue_CartCheckoutView(
            imgSrc: imgSrc,
            productName: productName,
            disc: disc,
            initPrice: initPrice,
            finPrice: finPrice,
            qty:qty,
            isAddToBasket: self.isAddToBasket,
            isActive: self.$isActive
        )
        
    }
}

struct Catalogue_ProductCardView: View {
    var imgSrc: String
    var productName: String
    var disc: String
    var initPrice: String
    var finPrice: String
    
    @State private var isShowingSheet = false
    @State private var isActive = false
    @State private var isAddToBasket = true
    
    func handleTap(isAddToBasket: Bool) {
        self.isAddToBasket = isAddToBasket
        self.isShowingSheet.toggle()
    }
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 6){
                NavigationLink(destination: ProductDetailView(
                    imgSrc: imgSrc, productName: productName, disc: disc, initPrice: initPrice, finPrice: finPrice))  {
                    VStack(alignment: .center, spacing: 6){
                        Image(imgSrc).resizable()
                            .frame(width: 130.0, height: 130.0).padding(.horizontal, 28.5)
                        // Sub-Header/S5
                        Text(productName)
                            .font(
                                Font.custom("Poppins-SemiBold", size: 14)
                            )
                            .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        
                        HStack{
                            HStack(alignment: .top) {
                                Text("\(disc) Off")
                                    .font(
                                        Font.custom("Poppins-Regular", size: 10)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(.white)
                            }
                            .padding(.horizontal, 4)
                            .background(Color(red: 0.96, green: 0.25, blue: 0.37))
                            .cornerRadius(Constants.borderRadiusDEFAULT)
                            
                            Text("Rp\(initPrice)")
                                .font(Font.custom("Poppins-Regular", size: 12))
                                .strikethrough()
                                .foregroundColor(Color(red: 0.69, green: 0.71, blue: 0.72))
                            
                            Spacer()
                        }
                        
                        Text("Rp\(finPrice)")
                            .font(
                                Font.custom("Poppins-SemiBold", size: 14)
                            )
                            .foregroundColor(Color(red: 0.22, green: 0.25, blue: 0.26)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    }
                }
                
                HStack{
                    HStack(alignment: .center, spacing: 8) { // Body/B4
                        Text("Checkout")
                            .font(Font.custom("Poppins-Regular", size: 12))
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
                    
                    HStack(alignment: .center, spacing: 8) { Image(systemName: "basket")
                        .frame(width: 20, height: 20) }
                    .padding(8)
                    .background(Color(red: 1, green: 0.76, blue: 0.29))
                    .cornerRadius(8)
                    .onTapGesture(count: 1) {
                        self.handleTap(isAddToBasket: true)
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
                            isAddToBasket: self.$isAddToBasket,
                            isActive: self.$isActive)
                    }  .presentationDetents([.fraction(0.30)])
                        .presentationCompactAdaptation(.none)
                        .presentationDragIndicator(.visible)
                        .padding(.top, 16)
                }.onChange(of: isActive){
                    isShowingSheet = false
                }.navigationDestination(isPresented: $isActive){
                    BasketView()
                }
                
            }.padding(12).frame(maxWidth: 187).background(.white)           .cornerRadius(12).shadow(color: .black.opacity(0.05), radius: 3.5, x: 0, y: 4).overlay(
                RoundedRectangle(cornerRadius: 12)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)
        )
        }
    }
}

#Preview {
    Catalogue_ProductCardView(
        imgSrc: "oreo",
        productName: "Oreo Strawberry 160gr",
        disc: "36%",
        initPrice: "20,800",
        finPrice: "10,800"
    )
}
