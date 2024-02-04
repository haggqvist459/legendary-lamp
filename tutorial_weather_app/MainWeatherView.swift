//
//  MainWeatherView.swift
//  tutorial_weather_app
//
//  Created by Tim Häggqvist Luotomäki on 26/12/2023.
//

import SwiftUI

struct MainWeatherView: View {
    
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temp)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}
#Preview {
    MainWeatherView(imageName: "cloud.sun.fill", temp: 30)
}
