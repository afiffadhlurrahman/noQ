//
//  Catalogue-CategoryCardView.swift
//  noQ
//
//  Created by Sigit Academy on 31/03/24.
//

import SwiftUI

struct Catalogue_CategoryCardView: View {
    var label: String
    var discount: Bool

    var body: some View {
        
        let backgroundColor = discount == true ? Color(red: 1, green: 0.96, blue: 0.88): Color(red: 0.95, green: 0.96, blue: 0.99)

        let textColor = discount == true ? Color(red: 1, green: 0.76, blue: 0.29): Color(red: 0.24, green: 0.27, blue: 0.4)
        
        HStack(alignment: .center, spacing: 10) {
            Text(label)                      .font(Font.custom("Poppins-Regular", size: 14))
                .foregroundColor(textColor)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .background(backgroundColor)
        .cornerRadius(8)
    }
}

#Preview {
    Catalogue_CategoryCardView(
        label: "% Discount",
        discount: true
    )
}
