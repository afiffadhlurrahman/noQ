//
//  BackButton.swift
//  noQ
//
//  Created by Muhammad Afif Fadhlurrahman on 01/04/24.
//

import SwiftUI

struct BackButton: View {
    @Environment(\.dismiss) var backbutton
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        Image(systemName: "chevron.left").font(.system(size: 24))
            .onTapGesture (perform: {
                self.presentationMode.wrappedValue.dismiss()
            })
                
    }
}

#Preview {
    BackButton()
}

