//
//  BackgroundView.swift
//  tutorial_weather_app
//
//  Created by Tim Häggqvist Luotomäki on 12/11/2023.
//

import SwiftUI

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
                                                   isNight ? .gray : Color("lightBlue")]),
                       startPoint: .bottomTrailing,
                       endPoint: .topLeading)
        .ignoresSafeArea()
//        ContainerRelativeShape()
//            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
//            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView(isNight: false)
}
