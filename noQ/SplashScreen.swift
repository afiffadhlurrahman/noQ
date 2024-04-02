//
//  SplashScreen.swift
//  noQ
//
//  Created by Muhammad Afif Fadhlurrahman on 02/04/24.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
                  if self.isActive {
                      HomeView()
                  } else {
                      Rectangle()
                          .background(Color.black)
                      Image("landing3")
                          .resizable()
                          .scaledToFit()
                          .frame(width: 300, height: 300)
                  }
              }
              .onAppear {
                  DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                      withAnimation {
                          self.isActive = true
                      }
                  }
              }
        
    }
}

#Preview {
    SplashScreen()
}
