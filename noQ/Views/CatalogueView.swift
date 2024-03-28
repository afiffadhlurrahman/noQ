//
//  CatalogueView.swift
//  noQ
//
//  Created by Sigit Academy on 28/03/24.
//

import SwiftUI

struct CatalogueView: View {
    var body: some View {
        VStack {
            HStack{
                VStack(spacing: 5.0){
                    Text("Store Location").font(.custom("Poppins-Regular", size: 12))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Lawson Syahdan")
                        .font(.custom("Poppins-Regular", size: 16))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Image("")
                }
            }
            
            // TODO: your content goes here...
            Text("content...")
            Spacer() /// forces content to top
        }
        
    }
}

#Preview {
    CatalogueView()
}
