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
                  LandingView()
              } else {
                  GeometryReader { 
                      geometry in
                      VStack {
                          Spacer()
                          HStack{
                              Spacer()
                              GifImage("splashscreen")
                                  .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.5)
                              .background(Color.white)
                              Spacer()
                          }.background(Color.white)
                          Spacer()
                      }.background(Color.white)
                  }
              }
          }.background(Color.white)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
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
