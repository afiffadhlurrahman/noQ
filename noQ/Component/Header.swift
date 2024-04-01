//
//  Header.swift
//  noQ
//
//  Created by Sigit Academy on 01/04/24.
//

import SwiftUI

struct Header: View {
    @Environment(\.dismiss) var dismiss

    var title: String
    
    var body: some View {
        HStack{
            Image(systemName: "chevron.left").font(.system(size: 24)).onTapGesture(perform: {
                    dismiss()
            })
            Spacer()
            // Sub-Header/S3
            Text(title)
                .font(
                    Font.custom("Poppins-SemiBold", size: 20)
                )
                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
            Spacer()
        }
        .padding(.bottom, 11)
    }
}

#Preview {
    Header(title: "Catalogue")
}
