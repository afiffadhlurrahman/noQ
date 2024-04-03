//
//  CategoryCardView.swift
//  noQ
//
//  Created by Dinda Ayu Syafitri on 01/04/24.
//

import SwiftUI

struct CategoryCardView: View {
    var imgSrc: String
    var category: String

    var body: some View {

        RoundedRectangle(cornerRadius: 12)
            .foregroundColor(.white)
            .aspectRatio(contentMode: .fit)
            .frame(width: 86)
            .overlay(
                VStack {
                    Image(imgSrc)
                    Text(category)
                        .font(Font.custom("Poppins-Regular", size: 12))
                }
            ).overlay(
                RoundedRectangle(cornerRadius: 12)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.95, green: 0.96, blue: 0.99), lineWidth: 1)

            )
    }
}

#Preview {
    CategoryCardView(
        imgSrc: "fried-chicken",
        category: "Fresh"
    )
}
