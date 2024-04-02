//
//  Back Button.swift
//  noQ
//
//  Created by Muhammad Afif Fadhlurrahman on 01/04/24.
//

import SwiftUI

struct Back_Button: View {
    @Environment(\.dismiss) var backbutton
    var body: some View {
        Image(systemName: "chevron.left").font(.system(size: 24))
            .onTapGesture (perform: {
                backbutton()
            })
                
    }
}

#Preview {
    Back_Button()
}
